import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/view/item/github_repository_list_view.dart';
import 'package:flutter_github_repositories/view/item/hide_on_scroll_item.dart';
import 'package:flutter_github_repositories/view/item/search_item.dart';
import 'package:flutter_github_repositories/view/item/toggle_dark_mode_item.dart';

class TopPage extends StatelessWidget {
  TopPage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GitHub Repositories',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: kToolbarHeight * 0.8,
        backgroundColor: Colors.deepOrange,
        actions: [ToggleDarkModeButton()],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GithubRipositoryListView(controller: _scrollController),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: HideOnScrollItem(
                controller: _scrollController,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchItem(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
