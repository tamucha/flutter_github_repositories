import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/router.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
