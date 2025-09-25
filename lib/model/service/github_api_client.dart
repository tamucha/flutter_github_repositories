import 'dart:ffi';

import 'package:flutter_github_repositories/model/repository/github_repository.dart';
import 'package:flutter_github_repositories/model/service/api_client.dart';

class GithubApiClient {
  Future<SearchGithubRepositoryResult?> serchRepositories({
    required String keyword,
    int? page = 1,
  }) async {
    final apiClient = ApiClient();
    final jsonMap = await apiClient.get(
      'api.github.com',
      'search/repositories',
      {'q': keyword, 'page': page.toString()},
    );
    final result = SearchGithubRepositoryResult.fromJson(jsonMap);
    return result;
  }
}
