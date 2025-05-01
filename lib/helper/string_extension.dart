
import '../models/resume.dart';

extension StringExtension on String {
  toFontType() {
    switch (this) {
      case 'NotoSansJP':
        return FontType.notoSansJP;
      case 'NotoSerifJP':
        return FontType.NotoSerifJP;
      case 'ZenKakuGothicNew':
        return FontType.ZenKakuGothicNew;
      case 'ZenOldMincho':
        return FontType.ZenOldMincho;
      case 'BIZUDPGothic':
        return FontType.BIZUDPGothic;
      default:
        return FontType.notoSansJP;
    }
  }
}