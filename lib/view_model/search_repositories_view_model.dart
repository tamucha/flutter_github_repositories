import 'dart:developer';

import 'package:flutter_github_repositories/model/repository/github_repository.dart';
import 'package:flutter_github_repositories/model/service/github_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/view_model/search_repositories_view_model.g.dart';

/// GitHubリポジトリーの検索を行い、検索結果の状態を管理する
@riverpod
class GithubRepositoriesViewModel extends _$GithubRepositoriesViewModel {
  @override
  Future<SearchGithubRepositoryResult?> build() {
    return Future.value(null);
  }

  Future<void> search(String keyword) async {
    if (keyword.isEmpty) {
      state = AsyncValue.data(null);
      return;
    }
    final githubApiClient = GithubApiClient();
    githubApiClient
        .serchRepositories(keyword: keyword)
        .then((value) {
          state = AsyncValue.data(value?.copyWith(keyword: keyword));
        })
        .catchError((error, stackTrace) {
          state = AsyncValue.error(error, stackTrace);
        });
  }

  Future<void> paging(int page) async {
    final currentState = state;
    if (currentState is AsyncData &&
        currentState.value != null &&
        currentState.value!.items.isNotEmpty &&
        currentState.value!.keyword != null) {
      final nextPage = page + 1;
      final githubApiClient = GithubApiClient();
      final result = await githubApiClient.serchRepositories(
        keyword: currentState.value!.keyword!,
        page: nextPage,
      );
      if (result != null && result.items.isNotEmpty) {
        final newItems = [...currentState.value!.items, ...result.items];
        state = AsyncValue.data(
          state.value!.copyWith(page: nextPage, items: newItems),
        );
      }
    }
  }

  String getKeyword() {
    return state.value?.keyword ?? "";
  }
}
