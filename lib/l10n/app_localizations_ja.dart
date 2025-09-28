// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => 'こんにちは世界！';

  @override
  String get searchRepositories => 'リポジトリを検索';

  @override
  String get pleaseSearchRepositories => 'リポジトリを検索してください';

  @override
  String get noMatchingRepositories => '該当するリポジトリがありません';
}
