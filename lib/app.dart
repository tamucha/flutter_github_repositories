import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/router.dart';
import 'package:flutter_github_repositories/view_model/dark_mode_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'l10n/app_localizations.dart';
import 'flavors.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeViewModelProvider);

    return MaterialApp.router(
      routerConfig: router,
      title: F.title,
      // ダークモード設定はアプリ内の設定に準ずる
      themeMode: isDarkMode.when(
        error: (error, stackTrace) => ThemeMode.light,
        loading: () => ThemeMode.light,
        data: (isDark) => isDark ? ThemeMode.dark : ThemeMode.light,
      ),
      // ライトモードのテーマ設定
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      // ダークモードのテーマ設定
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF303030),
      ),

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
