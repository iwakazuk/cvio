import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume.freezed.dart';
part 'resume.g.dart';

/// 履歴書
@freezed
abstract class Resume with _$Resume {
  const factory Resume({
    String? id,

    /// タイトル
    String? title,

    /// 自己PR
    String? selfPR,

    /// 志望動機/職務要約
    String? content,

    /// 本人希望欄
    String? subContent,

    /// 作成日
    DateTime? createDate,

    /// PDF
    String? path,

    /// 履歴書の種類
    String? type,

    /// フォント
    String? font,

    /// 職務経歴書か
    bool? isCareer,
  }) = _Resume;

  /// JSON から `Resume` インスタンスを生成
  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);
}

enum FontType {
  notoSansJP,
  NotoSerifJP,
  ZenKakuGothicNew,
  ZenOldMincho,
  BIZUDPGothic,
}
