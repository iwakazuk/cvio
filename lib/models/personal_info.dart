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

    /// 緊急メールアドレス
    String? emergencyEmail,

    /// 電話番号
    String? phone,

    /// 緊急電話番号
    String? emergencyPhone,

    /// 生年月日1 (年)
    String? birthYear,

    /// 生年月日2 (月)
    String? birthMonth,

    /// 生年月日3 (日)
    String? birthDay,

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

    /// 緊急郵便番号 - nullable
    String? emergencyPostalCode,

    /// 緊急住所(都道府県) - nullable
    String? emergencyAddressPrefecture,

    /// 緊急住所(市区町村) - nullable
    String? emergencyAddressCity,

    /// 緊急住所(番地) - nullable
    String? emergencyAddressStreet,

    /// 緊急住所(マンション・建物名) - nullable
    String? emergencyAddressBuilding,

    /// 緊急住所ふりがな - nullable
    String? emergencyAddressKana,
  }) = _PersonalInfo;

  /// JSON から `PersonalInfo` インスタンスを生成
  factory PersonalInfo.fromJson(Map<String, dynamic> json) => _$PersonalInfoFromJson(json);
}
