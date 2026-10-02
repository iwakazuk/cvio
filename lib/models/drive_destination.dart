/// A Drive folder selected by the user, never an arbitrary upload endpoint.
class DriveDestination {
  const DriveDestination(this.id, {this.resourceKey});

  static const initial = DriveDestination('1pLI_tkl4EsHIsIX3AY0XLcJfunlNt7VW');
  final String id;
  final String? resourceKey;

  static DriveDestination parse(String input) {
    final uri = Uri.tryParse(input.trim());
    if (uri == null || uri.scheme != 'https' || uri.host != 'drive.google.com' ||
        uri.userInfo.isNotEmpty || uri.hasPort) {
      throw const FormatException('Google DriveのフォルダURLを入力してください。');
    }
    final match = RegExp(r'^/drive/(?:u/\d+/)?folders/([A-Za-z0-9_-]+)/?$')
        .firstMatch(uri.path);
    if (match == null) {
      throw const FormatException('ファイルではなく、保存先フォルダのURLを入力してください。');
    }
    final key = uri.queryParameters['resourcekey'];
    if (key != null && !RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(key)) {
      throw const FormatException('フォルダURLのリソースキーが正しくありません。');
    }
    return DriveDestination(match.group(1)!, resourceKey: key);
  }

  String get url => Uri.https('drive.google.com', '/drive/folders/$id',
      resourceKey == null ? null : {'resourcekey': resourceKey!}).toString();

  Map<String, String> get resourceHeaders => resourceKey == null ? {} : {
    'X-Goog-Drive-Resource-Keys': '$id/$resourceKey',
  };
}
