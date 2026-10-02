# GitHub ActionsでAPKを作る

## 構成

`.github/workflows/android-apk.yml` は手動実行専用です。push・PR・定期実行では動きません。

- GitHub管理のUbuntu 24.04で実行。このPCへのインストールは不要。
- Flutter 3.29.3 / Java 17。既存のAndroid Gradle Plugin 8.8.2とGradle 8.14を利用。
- AQUOS wish4向けのarm64 release APKを1つ生成。
- ジョブのタイムアウトは30分。1リポジトリにつき同時に1件実行。
- APKと公開署名証明書情報を3日間保存。依存キャッシュは明示的には保存しない。
- リリース用の同じ署名鍵を毎回使用。未設定ならFlutterを取得する前に停止。
- Googleログイン設定前でも `enable_drive` をオフにして画面確認用APKを作成可能。Driveへの接続時は設定未完了の案内が表示される。

これは料金の上限設定ではありません。非公開リポジトリの無料枠は所有アカウントの他の利用と共有されます。課金を防ぐにはGitHubのBilling設定も確認してください。

## 初回のみ必要な設定

1. アプリ変更とワークフローをGitHubへ反映する。手動実行ボタンを表示するには、ワークフローがデフォルトブランチに存在する必要がある。現在のリモートのデフォルトブランチは `main`、この作業のブランチは `develop`。古いデモ画面をビルドしないよう、アプリ一式も反映すること。
2. 継続して使うAndroid署名鍵を用意し、安全な場所にバックアップする。毎回生成し直さない。
3. リポジトリの Settings → Secrets and variables → Actions に次を設定する。

| 種類 | 名前 | 内容 |
| --- | --- | --- |
| Secret | `ANDROID_KEYSTORE_BASE64` | PKCS12署名鍵ファイルのBase64 |
| Secret | `ANDROID_STORE_PASSWORD` | キーストアのパスワード |
| Secret | `ANDROID_KEY_PASSWORD` | キーのパスワード |
| Secret | `ANDROID_KEY_ALIAS` | キーのエイリアス |
| Variable | `GOOGLE_SERVER_CLIENT_ID` | Google CloudのWeb用OAuthクライアントID。Drive利用時のみ必須 |

署名鍵はアプリ更新とGoogleログインの識別に必要な秘密情報です。リポジトリ、公開成果物、チャットに貼り付けないでください。GitHub Secretsに登録し、鍵とパスワードは別途保管してください。

このPCにあるOpenSSLだけで署名鍵を作成できます（Java/Flutterのインストール不要）。以下のスクリプトは既存の鍵があると停止します。

```sh
bash scripts/create-android-signing-key.sh
```

生成物はGit管理対象外の `.local-signing/` に保存します。ディレクトリは所有者のみアクセスでき、ファイルも所有者のみ読み書きできます。

- `cvio-release.p12`: 暗号化された署名鍵。Base64に変換した値を `ANDROID_KEYSTORE_BASE64` に登録。
- `password.txt`: 両方のパスワードSecretに設定する同じパスワード。
- キーのエイリアスは `cvio`。
- `certificate.pem` と `sha1.txt`: 公開証明書とOAuth登録用SHA-1。

ディレクトリを安全な場所にバックアップしてください。秘密鍵とパスワードをチャットやPRに貼り付けないでください。

Google CloudのAndroid用OAuthクライアントには、パッケージ名 `com.example.cvio` とこのSHA-1を登録します。APKビルド成功時の `signing-certificate.txt` にも公開証明書情報が入ります。

## ビルドとダウンロード

1. GitHubのActions → **Build Android APK** → **Run workflow**。
2. 最新のアプリ変更を含むブランチを選択。
3. Google Cloudのクライアントとテストユーザーの設定が済んでいれば `enable_drive` をオン。
4. 完了した実行のArtifactsから `cvio-apk-実行番号` をダウンロード。
5. ZIP内の `cvio-arm64.apk` をAQUOS wish4へ転送し、インストールする。

APKに加え、署名確認結果、SHA-256チェックサム、解決済みpubspec.lockを保存します。署名鍵自体は成果物に含めません。依存解決はActions上で行い、lockfileを自動でリポジトリへ書き戻しません。

## 現在の検証状況

ローカルビルド、ツールのインストール、Actionsの実行は未実施です。初回の依存取得・生成処理・テスト・ビルドで追加の修正が必要になる可能性があります。

旧カウンター用のテストをダッシュボード確認へ更新し、PDF画面で読み込み結果を `void` として扱っていた型指定を修正しました。その他の既存機能の実機動作は未確認です。

Google認証の進捗は [drive-export.md](drive-export.md) を参照してください。
