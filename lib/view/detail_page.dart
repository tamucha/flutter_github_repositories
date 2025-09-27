import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/model/repository/github_repository.dart';

class DetailPage extends StatelessWidget {
  final GithubRepository repository;
  const DetailPage({required this.repository, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: AvatarItem(avatarUrl: repository.owner.avatarUrl)),
            Text(repository.name, style: const TextStyle(fontSize: 30)),
            Text(repository.language ?? "言語情報なし"),
            const SizedBox(height: 16),
            CountersItem(
              starsCount: repository.stargazersCount ?? 0,
              watchersCount: repository.watchersCount ?? 0,
              forksCount: repository.forksCount ?? 0,
              issuesCount: repository.openIssuesCount ?? 0,
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarItem extends StatelessWidget {
  final Uri? avatarUrl;
  const AvatarItem({this.avatarUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return avatarUrl != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(avatarUrl.toString(), width: 200, height: 200),
          )
        : const Icon(Icons.account_circle, size: 200);
  }
}

class CounterItem extends StatelessWidget {
  final int count;
  final IconData icon;
  const CounterItem({required this.count, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 4),
          Text(_formatCount(count)),
        ],
      ),
    );
  }

  String _formatCount(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    }
    return count.toString();
  }
}

class CountersItem extends StatelessWidget {
  final int starsCount;
  final int watchersCount;
  final int forksCount;
  final int issuesCount;

  const CountersItem({
    required this.starsCount,
    required this.watchersCount,
    required this.forksCount,
    required this.issuesCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          CounterItem(count: starsCount, icon: Icons.star),
          CounterItem(count: watchersCount, icon: Icons.remove_red_eye),
          CounterItem(count: forksCount, icon: Icons.call_split),
          CounterItem(count: issuesCount, icon: Icons.error_outline),
        ],
      ),
    );
  }
}
