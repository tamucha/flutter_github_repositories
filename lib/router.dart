import 'package:flutter_github_repositories/pages/top_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => TopPage())],
);
