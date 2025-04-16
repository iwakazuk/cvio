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

    /// 内容
    String? content,

    /// 作成日
    DateTime? createDate,

    /// 本人希望欄など
    String? subContent,

    /// PDF
    String? path,

    /// フォント
    String? font,

    /// 職務経歴書か
    bool? isCareer,
  }) = _Resume;

  /// JSON から `Resume` インスタンスを生成
  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);
}
