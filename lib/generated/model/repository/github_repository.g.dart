// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../model/repository/github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubRepository _$GithubRepositoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_GithubRepository',
      json,
      ($checkedConvert) {
        final val = _GithubRepository(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          owner: $checkedConvert(
            'owner',
            (v) => Owner.fromJson(v as Map<String, dynamic>),
          ),
          language: $checkedConvert('language', (v) => v as String?),
          stargazersCount: $checkedConvert(
            'stargazers_count',
            (v) => (v as num?)?.toInt(),
          ),
          watchersCount: $checkedConvert(
            'watchers_count',
            (v) => (v as num?)?.toInt(),
          ),
          forksCount: $checkedConvert(
            'forks_count',
            (v) => (v as num?)?.toInt(),
          ),
          openIssuesCount: $checkedConvert(
            'open_issues_count',
            (v) => (v as num?)?.toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'stargazersCount': 'stargazers_count',
        'watchersCount': 'watchers_count',
        'forksCount': 'forks_count',
        'openIssuesCount': 'open_issues_count',
      },
    );

Map<String, dynamic> _$GithubRepositoryToJson(_GithubRepository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
    };

_Owner _$OwnerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Owner', json, ($checkedConvert) {
      final val = _Owner(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        avatarUrl: $checkedConvert(
          'avatar_url',
          (v) => v == null ? null : Uri.parse(v as String),
        ),
      );
      return val;
    }, fieldKeyMap: const {'avatarUrl': 'avatar_url'});

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
  'id': instance.id,
  'avatar_url': instance.avatarUrl?.toString(),
};

_SearchGithubRepositoryResult _$SearchGithubRepositoryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_SearchGithubRepositoryResult',
  json,
  ($checkedConvert) {
    final val = _SearchGithubRepositoryResult(
      keyword: $checkedConvert('keyword', (v) => v as String?),
      page: $checkedConvert('page', (v) => (v as num?)?.toInt() ?? 1),
      totalCount: $checkedConvert(
        'total_count',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      incompleteResults: $checkedConvert(
        'incomplete_results',
        (v) => v as bool?,
      ),
      items: $checkedConvert(
        'items',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => GithubRepository.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const [],
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'totalCount': 'total_count',
    'incompleteResults': 'incomplete_results',
  },
);

Map<String, dynamic> _$SearchGithubRepositoryResultToJson(
  _SearchGithubRepositoryResult instance,
) => <String, dynamic>{
  'keyword': instance.keyword,
  'page': instance.page,
  'total_count': instance.totalCount,
  'incomplete_results': instance.incompleteResults,
  'items': instance.items,
};
