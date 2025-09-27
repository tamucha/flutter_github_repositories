// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../view_model/dark_mode_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ダークモード/ライトモードの設定を行い、状態を管理する

@ProviderFor(DarkModeViewModel)
const darkModeViewModelProvider = DarkModeViewModelProvider._();

/// ダークモード/ライトモードの設定を行い、状態を管理する
final class DarkModeViewModelProvider
    extends $AsyncNotifierProvider<DarkModeViewModel, bool> {
  /// ダークモード/ライトモードの設定を行い、状態を管理する
  const DarkModeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'darkModeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$darkModeViewModelHash();

  @$internal
  @override
  DarkModeViewModel create() => DarkModeViewModel();
}

String _$darkModeViewModelHash() => r'8806609ad2704dcce074854c8e1142d89f14958f';

/// ダークモード/ライトモードの設定を行い、状態を管理する

abstract class _$DarkModeViewModel extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
