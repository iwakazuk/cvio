import 'package:isar/isar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info.freezed.dart';

/// 個人情報
@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
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
}

extension PersonalInfoExtension on PersonalInfo {
  /// DB 等に保存する際に Map<String, dynamic> に変換する
  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'lastNameKana': lastNameKana,
      'firstNameKana': firstNameKana,
      'email': email,
      'emergencyEmail': emergencyEmail,
      'phone': phone,
      'emergencyPhone': emergencyPhone,
      'birthYear': birthYear,
      'birthMonth': birthMonth,
      'birthDay': birthDay,
      'age': age,
      'gender': gender,
      'postalCode': postalCode,
      'addressPrefecture': addressPrefecture,
      'addressCity': addressCity,
      'addressStreet': addressStreet,
      'addressBuilding': addressBuilding,
      'addressKana': addressKana,
      'emergencyPostalCode': emergencyPostalCode,
      'emergencyAddressPrefecture': emergencyAddressPrefecture,
      'emergencyAddressCity': emergencyAddressCity,
      'emergencyAddressStreet': emergencyAddressStreet,
      'emergencyAddressBuilding': emergencyAddressBuilding,
      'emergencyAddressKana': emergencyAddressKana,
    };
  }

  /// DB から読み込んだ Map<String, dynamic> から PersonalInfo を生成
  static PersonalInfo fromMap(Map<String, dynamic> map) {
    return PersonalInfo(
      lastName: map['lastName'],
      firstName: map['firstName'],
      lastNameKana: map['lastNameKana'],
      firstNameKana: map['firstNameKana'],
      email: map['email'],
      emergencyEmail: map['emergencyEmail'],
      phone: map['phone'],
      emergencyPhone: map['emergencyPhone'],
      birthYear: map['birthYear'],
      birthMonth: map['birthMonth'],
      birthDay: map['birthDay'],
      age: map['age'],
      gender: map['gender'],
      postalCode: map['postalCode'],
      addressPrefecture: map['addressPrefecture'],
      addressCity: map['addressCity'],
      addressStreet: map['addressStreet'],
      addressBuilding: map['addressBuilding'],
      addressKana: map['addressKana'],
      emergencyPostalCode: map['emergencyPostalCode'],
      emergencyAddressPrefecture: map['emergencyAddressPrefecture'],
      emergencyAddressCity: map['emergencyAddressCity'],
      emergencyAddressStreet: map['emergencyAddressStreet'],
      emergencyAddressBuilding: map['emergencyAddressBuilding'],
      emergencyAddressKana: map['emergencyAddressKana'],
    );
  }
}
