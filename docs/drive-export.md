# AQUOS wish4 通話音声のエクスポート

## 使い方

1. AQUOS標準の「簡易留守録」→「通話音声メモ」で対象を長押しし、「エクスポート」で端末のフォルダに保存する。機種の販売元・OSバージョンにより表示は異なる場合がある。
2. cvioのダッシュボードから「エクスポート」を開く。
3. 指定フォルダに編集権限を持つGoogleアカウントを接続する。
4. 必要に応じて「保存先を変更」でGoogle DriveのフォルダURLを入力して保存する。設定は端末に記憶され、書き込み権限は送信時に確認する。
5. 書き出した音声ファイルを選択して「エクスポート」を押す。

初期送信先は `1pLI_tkl4EsHIsIX3AY0XLcJfunlNt7VW`。画面から別のフォルダURLへ切り替え可能。元のファイルは削除・変更しない。
通話音声メモのアプリ専用領域の直接読み取りや、自動録音・自動収集は行わない。
選択したファイルだけを扱うため、この機能のためのストレージ全体の権限追加は不要。

## Google Cloud の設定

2026-10-02時点の作業状況:

- 開発組織: `silaris.co.jp`（Silaris）。保存先Driveはユーザー指定の別組織のフォルダ。
- プロジェクト `cvio` / `cvio-510320` を作成済み。
- Google Drive APIの有効化をコンソールで確認済み。
- OAuth初期設定はユーザーが作成を完了。コンソールで構成作成済みの通知を確認。
- OAuthの対象は「外部」、公開ステータスは「テスト中」とコンソールで確認。テストユーザーは0人。メールアドレスはユーザーが後日確認するため登録を保留。
- OAuthクライアント一覧が空であることを確認。作成画面を開く途中でブラウザー接続が切断。クライアントの作成は未実施。Androidの署名証明書SHA-1と、利用するテストユーザーのGoogleアカウントを要確認。リリース用のPKCS12署名鍵を既存のOpenSSLで生成済み。Git管理対象外の `.local-signing/` に保存。ツールのインストールはしていない。
- Android用OAuthクライアントへ登録する公開証明書SHA-1: `F4:19:21:0B:DA:3D:4B:23:FB:F1:B3:3B:16:E7:C7:14:8D:C1:D0:EC`。

残りの設定手順:

- Google CloudプロジェクトでGoogle Drive APIを有効にする。
- OAuth同意画面を設定する。テスト運用では利用アカウントをテストユーザーに登録する。
- Android用OAuthクライアントを作成する。現在のapplicationIdは `com.example.cvio`。配布するアプリの署名証明書のSHA-1を登録する。debug/releaseで署名が異なる場合はそれぞれ登録する。
- 同一プロジェクトでウェブアプリケーション用OAuthクライアントを作成する。
- その公開クライアントIDを、将来の実行・ビルド時に `--dart-define=GOOGLE_SERVER_CLIENT_ID=xxxxx.apps.googleusercontent.com` で渡す。クライアントシークレットやサービスアカウント鍵をアプリに埋め込まない。
- 対象フォルダの編集権限を利用アカウントに付与する。リンクを知っているだけでは送信できない。

この実装は利用者が指定した既存フォルダにアクセスするため、OAuthスコープ `https://www.googleapis.com/auth/drive` を要求する。これはGoogle Drive全体を扱える広い制限付きスコープであり、アプリ側の処理は選択したフォルダの確認と新規アップロードに限定している。一般公開時はGoogleのOAuth審査要件を確認すること。

`drive.file` に単純に置き換えても、URLで指定した既存フォルダへのアクセスは付与されない。より狭いスコープに移行する場合はGoogle Picker等で対象フォルダをアプリに許可する導線を別途実装する。

## 実装と制限

- 既存プロジェクトのSDK構成を維持し、`google_sign_in: 6.2.2` のAPIを使用。依存定義だけを追加しており、依存取得・lockfile更新は行っていない。7系への更新には認証APIの移行が必要。
- Driveの再開可能アップロードAPIで1 MiBずつ送信し、サーバーが受領した割合を表示する。音声全体をメモリに読み込まない。
- フォルダの存在、種類、削除状態、書き込み権限を送信前に確認する。
- 送信中は二重タップ・画面離脱を防ぐ。成功後は同じ選択の送信ボタンを無効化する。
- 中断したセッションの永続化、自動再試行、アプリ終了後のバックグラウンド送信には未対応。通信切断時は受信済みか不明な場合があるため、再送信前にDriveを確認する。再選択や画面の開き直しでは同名ファイルを再送信できる。
- 現時点の対象はAndroid。AQUOS wish4の実機で、書き出し形式・ファイル選択・Google認証・送信完了を確認する必要がある。

## 検証状況

2026-10-02にGitHub Actionsで依存取得・コード生成、テスト11件、署名付きAPK作成・署名検証が成功。ローカルでのビルドやツール導入、実ファイルのDriveアップロードは実施していない。
サービスのテストコードは `test/drive_export_service_test.dart`、画面の初期状態のテストは `test/export_screen_test.dart`。いずれもActions上で成功。
`test/widget_test.dart` はダッシュボード確認用へ更新済み。APKの手動ビルド構成は [android-build.md](android-build.md) を参照。

## 参照

- [AQUOS wish4取扱説明書（Y!mobile版）](https://www.ymobile.jp/lineup/wish4/data/wish4_userguide.pdf)
- [Driveアップロード](https://developers.google.com/workspace/drive/api/guides/manage-uploads)
- [Driveスコープ](https://developers.google.com/workspace/drive/api/guides/api-specific-auth)
- [Google Sign-In 6.2.2](https://pub.dev/packages/google_sign_in/versions/6.2.2)
