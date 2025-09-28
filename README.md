# flutter_github_repositories

GitHub のリポジトリの一覧を表示・検索できるアプリです。

## Todo & Memo

1. アプリプロジェクトの新規作成
1. flutter doctor で不備がないかチェック
1. fvm の導入
1. flavor の導入
 - flutter_flavorizr を利用して flavor を設定する
 - flutter_flavorizr の実行は最小限に留める、 fvm flutter pub run flutter_flavorizr -p assets:download,assets:extract,android:androidManifest,android:flavorizrGradle,android:buildGradle,flutter:flavors,flutter:app,flutter:pages,flutter:main,ios:podfile,ios:xcconfig,ios:buildTargets,ios:schema,ios:plist,assets:clean,ide:config
 - fvm flutter pub run flutter_flavorizr -p assets:download,assets:extract,ios:schema,assets:clean
1. アイコンの生成
 - ChatGPTでアプリ名にちなんだアイコンを生成
1. riverpod の導入
 - riverpod_generatorを使う
 - flutter pub run build_runner watch -d で自動生成
1. freezed の導入
  - pub add freezed_annotation dev:freezed json_annotation dev:json_serializable
  - flutter pub run build_runner watch -d で自動生成
1. go_router の導入
1. Modelの作成
 - freezedを使用
  - freezedをより効率よく生成するWEBツール[DartJ](https://dartj.web.app/)がよさげ
  - 深い階層でも理解してJSONからFreezedのクラスを出力してくれる
 - build.yamlでファイルの生成先を変更
  - 参照: https://torikatsu923.hatenablog.com/entry/2022/02/07/235634
 - snake形式対応に時間をとられた
1. ViewModelの作成
 - RiverpodのNotifierを使用（riverpod_generatorで作成）
 - 機能単位による作成（検索機能、ダークモード機能）
1. Viewの作成
 - トップページ
  - 検索バーはスクロールで非表示
  - 検索バーの
  - ページング、ロード中は読みこないなどの制御で
 - 詳細ページ
  - 特筆なし
1. ダークモード対応
 - SharedPreferencesで設定を永続化
1. 多言語対応
 - 参照: https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization
 - 参照: https://qiita.com/railgun-0402/items/6cb9cfb600e5c71f88c1
