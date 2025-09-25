import 'package:flutter_github_repositories/model/service/github_api_client.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GithubApiClient', () {
    group('serchRepositories()', () {
      test('キーワード"flutterで"を指定', () async {
        final api = GithubApiClient();
        final result = await api.serchRepositories(keyword: "flutter");
        expect(result?.totalCount, greaterThan(10000));
        expect(result?.items.length, equals(30));
      });

      test('キーワード指定なし', () async {
        final api = GithubApiClient();
        expect(
          () async => await api.serchRepositories(keyword: ""),
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
