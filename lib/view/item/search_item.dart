import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/view_model/search_repositories_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchItem extends ConsumerWidget {
  SearchItem({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    controller.text = ref
        .read(githubRepositoriesViewModelProvider.notifier)
        .getKeyword();
    return SearchBar(
      controller: controller,
      onSubmitted: (value) {
        ref.read(githubRepositoriesViewModelProvider.notifier).search(value);
      },
      hintText: "リポジトリを検索",
      padding: const WidgetStatePropertyAll<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 16.0),
      ),
      leading: const Icon(Icons.search),
      trailing: [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            controller.clear();
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      ],
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
      backgroundColor: WidgetStatePropertyAll(
        Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
