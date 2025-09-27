import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/view_model/dark_mode_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ToggleDarkModeButton extends ConsumerWidget {
  const ToggleDarkModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(darkModeViewModelProvider)
        .when(
          data: (isDarkMode) => _ToggleDarkModeButton(isDarkMode),
          error: (error, stackTrace) => _ToggleDarkModeButton(false),
          loading: () => _ToggleDarkModeButton(false),
        );
  }
}

class _ToggleDarkModeButton extends ConsumerWidget {
  final bool isDarkMode;

  const _ToggleDarkModeButton(this.isDarkMode);

  @override
  Widget build(Object context, WidgetRef ref) {
    return IconButton(
      onPressed: () => ref.read(darkModeViewModelProvider.notifier).toggle(),
      icon: Icon(
        isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
        color: Colors.white,
      ),
    );
  }
}
