import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

/// 個人情報
@freezed
abstract class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    /// 証明写真用画像ファイルのパス
    String? image,

    /// 氏
    String? lastName,

    /// 名
    String? firstName,

    /// 氏ふりがな
    String? lastNameKana,

    /// 名ふりがな
    String? firstNameKana,

    /// メールアドレス
    String? email,

    /// 電話番号
    String? phone,

    /// 生年月日
    String? birthday,

    /// 年齢
    String? age,

    /// 性別
    String? gender,

    /// 郵便番号
    String? postalCode,

    /// 住所(都道府県)
    String? addressPrefecture,

    /// 住所(市区町村)
    String? addressCity,

    /// 住所(番地)
    String? addressStreet,

    /// 住所(マンション・建物名)
    String? addressBuilding,

    /// 住所ふりがな
    String? addressKana,

    /// 緊急メールアドレス
    String? emergencyEmail,

    /// 緊急電話番号
    String? emergencyPhone,

    /// 緊急郵便番号
    String? emergencyPostalCode,

    /// 緊急住所(都道府県)
    String? emergencyAddressPrefecture,

    /// 緊急住所(市区町村)
    String? emergencyAddressCity,

    /// 緊急住所(番地)
    String? emergencyAddressStreet,

    /// 緊急住所(マンション・建物名)
    String? emergencyAddressBuilding,

    /// 緊急住所ふりがな
    String? emergencyAddressKana,
  }) = _PersonalInfo;

  /// JSON から `PersonalInfo` インスタンスを生成
  factory PersonalInfo.fromJson(Map<String, dynamic> json) => _$PersonalInfoFromJson(json);
}
