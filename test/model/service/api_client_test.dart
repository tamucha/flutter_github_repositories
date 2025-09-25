import 'dart:math';

import 'package:flutter_github_repositories/model/service/api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group('ApiClient', () {
    group('get()', () {
      test('正常系', () async {
        final api = ApiClient();
        final result = await api.get('api.github.com', 'search/repositories', {
          'q': 'flutter',
        });
        expect(result['total_count'], greaterThan(10000));
      });

      test('400エラーの場合', () async {
        // MockClientで400を返すように設定
        final mockClient = MockClient((request) async {
          return http.Response('Bad Request', 400);
        });
        final api = ApiClient(httpClient: mockClient);
        expect(
          () async => await api.get('api.github.com', 'search/repositories', {
            'q': 'flutter',
          }),
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
