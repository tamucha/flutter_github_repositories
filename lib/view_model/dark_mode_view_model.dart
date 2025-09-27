import 'package:flutter_github_repositories/constant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part '../generated/view_model/dark_mode_view_model.g.dart';

/// ダークモード/ライトモードの設定を行い、状態を管理する
@riverpod
class DarkModeViewModel extends _$DarkModeViewModel {
  @override
  Future<bool> build() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final isDarkMode = sharedPreferences.getBool(SPKey.darkMode) ?? false;

    return isDarkMode;
  }

  /// ダークモード/ライトモードの切り替えを行い、アプリ内保存する
  void toggle() async {
    final value = state.value != null ? !state.value! : false;
    state = AsyncValue.data(value);
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(SPKey.darkMode, value);
  }
}
