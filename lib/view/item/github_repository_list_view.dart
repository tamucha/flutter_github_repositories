import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_github_repositories/view_model/search_repositories_view_model.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class GithubRipositoryListView extends HookConsumerWidget {
  final ScrollController controller;

  GithubRipositoryListView({required this.controller, super.key});

  final maxPage = 5;
  var currentPage = 1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);
    final githubRepositoriesViewModel = ref.watch(
      githubRepositoriesViewModelProvider,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => loading.value = false);

    return githubRepositoriesViewModel.when(
      data: (data) {
        if (data == null) {
          return const Center(child: Text("リポジトリを検索してください"));
        }
        if (data.items.isEmpty) {
          return const Center(child: Text("該当するリポジトリがありません"));
        }

        currentPage = data.page;
        final keyword = data.keyword!;

        controller.addListener(() async {
          if (controller.position.pixels ==
              controller.position.maxScrollExtent) {
            if (loading.value || currentPage >= maxPage) {
              return;
            }
            loading.value = true;
            try {
              await ref
                  .read(githubRepositoriesViewModelProvider.notifier)
                  .paging(currentPage);
            } catch (e) {
              // エラーになっても処理を続行できるのでエラーメッセージは何も出さない
            }
          }
        });

        return RefreshIndicator(
          onRefresh: () => ref
              .read(githubRepositoriesViewModelProvider.notifier)
              .search(keyword),
          child: ListView.builder(
            controller: controller,
            itemCount: data.items.length,
            itemBuilder: (context, index) {
              final item = data.items[index];
              return ListTile(
                onTap: () => context.go('/details', extra: item),
                leading: item.owner.avatarUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          item.owner.avatarUrl.toString(),
                          width: 40,
                        ),
                      )
                    : const Icon(Icons.account_circle),
                trailing: const Icon(Icons.chevron_right),
                title: Text(item.name),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text("エラー")),
    );
  }
}
