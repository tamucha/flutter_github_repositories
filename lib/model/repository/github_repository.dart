import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/model/repository/github_repository.freezed.dart';
part '../../generated/model/repository/github_repository.g.dart';

@freezed
abstract class GithubRepository with _$GithubRepository {
  const factory GithubRepository({
    // ID
    required int id,
    // リポジトリ名
    required String name,
    // オーナーアイコン
    required Uri? avatarUrl,
    // プロジェクト言語
    required String? language,
    // Star 数
    required int? stargazersCount,
    // Watcher 数
    required int? watchersCount,
    // Fork 数
    required int? forksCount,
    // Issue 数
    required int? openIssuesCount,
  }) = _GithubRepository;

  factory GithubRepository.fromJson(Map<String, Object?> json) =>
      _$GithubRepositoryFromJson(json);
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
abstract class SearchGithubRepositoryResult
    with _$SearchGithubRepositoryResult {
  const factory SearchGithubRepositoryResult({
    @Default(0) int? totalCount,
    required bool? incompleteResults,
    @Default([]) List<GithubRepository> items,
  }) = _SearchGithubRepositoryResult;

  factory SearchGithubRepositoryResult.fromJson(Map<String, Object?> json) =>
      _$SearchGithubRepositoryResultFromJson(json);
}
