import 'package:flutter_github_repositories/model/repository/github_repository.dart';
import 'package:flutter_github_repositories/view/detail_page.dart';
import 'package:flutter_github_repositories/view/top_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TopPage(),

      routes: [
        GoRoute(
          path: 'details',
          builder: (context, state) {
            final repository = state.extra as GithubRepository?;
            if (repository == null) {
              throw Exception('Repository data is missing');
            }
            return DetailPage(repository: repository);
          },
        ),
      ],
    ),
  ],
);
