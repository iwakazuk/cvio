import 'package:permission_handler/permission_handler.dart';

/// フォト／ストレージ権限を要求して結果を返す
Future<bool> requestGalleryPermission() async {
  // Android 33+ → Permission.photos で READ_MEDIA_IMAGES
  // それ以前 / iOS   → 自動で最適な権限にマッピングされる
  final status = await Permission.photos.status;

  // すでに許可済み
  if (status.isGranted) return true;

  // 初回 or 再要求
  if (status.isDenied) {
    final result = await Permission.photos.request();
    return result.isGranted;
  }

  // 「今後は表示しない」などで永久拒否されている場合
  if (status.isPermanentlyDenied) {
    // 権限設定画面を開いてもらう
    await openAppSettings();
  }
  return false;
}
