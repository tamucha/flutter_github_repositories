// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../view_model/search_repositories_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// GitHubリポジトリーの検索を行い、検索結果の状態を管理する

@ProviderFor(GithubRepositoriesViewModel)
const githubRepositoriesViewModelProvider =
    GithubRepositoriesViewModelProvider._();

/// GitHubリポジトリーの検索を行い、検索結果の状態を管理する
final class GithubRepositoriesViewModelProvider
    extends
        $AsyncNotifierProvider<
          GithubRepositoriesViewModel,
          SearchGithubRepositoryResult?
        > {
  /// GitHubリポジトリーの検索を行い、検索結果の状態を管理する
  const GithubRepositoriesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'githubRepositoriesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$githubRepositoriesViewModelHash();

  @$internal
  @override
  GithubRepositoriesViewModel create() => GithubRepositoriesViewModel();
}

String _$githubRepositoriesViewModelHash() =>
    r'd76ee43378313c2e761b3709b7e499e6b9667d14';

/// GitHubリポジトリーの検索を行い、検索結果の状態を管理する

abstract class _$GithubRepositoriesViewModel
    extends $AsyncNotifier<SearchGithubRepositoryResult?> {
  FutureOr<SearchGithubRepositoryResult?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<SearchGithubRepositoryResult?>,
              SearchGithubRepositoryResult?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SearchGithubRepositoryResult?>,
                SearchGithubRepositoryResult?
              >,
              AsyncValue<SearchGithubRepositoryResult?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
