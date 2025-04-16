import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';

/// 個人情報のエラーメッセージを管理する StateNotifier
class PersonalInfoErrorMessageNotifier extends StateNotifier<PersonalInfo> {

  // コンストラクタ
  PersonalInfoErrorMessageNotifier() : super(PersonalInfo());

  /// 氏
  void updateLastName(String newLastName) {
    state = state.copyWith(lastName: newLastName);
  }

  /// 名
  void updateFirstName(String newFirstName) {
    state = state.copyWith(firstName: newFirstName);
  }

  /// 氏ふりがな
  void updateLastNameKana(String newLastNameKana) {
    state = state.copyWith(lastNameKana: newLastNameKana);
  }

  /// 名ふりがな
  void updateFirstNameKana(String newFirstNameKana) {
    state = state.copyWith(firstNameKana: newFirstNameKana);
  }

  /// メールアドレス
  void updateEmail(String newEmail) {
    state = state.copyWith(email: newEmail);
  }

  /// メールアドレス
  void updateEmergencyEmail(String newEmail) {
    state = state.copyWith(emergencyEmail: newEmail);
  }

  /// 電話番号
  void updatePhone(String newPhone) {
    state = state.copyWith(phone: newPhone);
  }

  /// 緊急電話番号
  void updateEmergencyPhone(String? newEmergencyPhone) {
    state = state.copyWith(emergencyPhone: newEmergencyPhone);
  }

  /// 生年月日
  void updateBirthDay(String newBirthDay) {
    state = state.copyWith(birthday: newBirthDay);
  }

  /// 性別
  void updateGender(String newGender) {
    state = state.copyWith(gender: newGender);
  }

  /// 郵便番号
  void updatePostalCode(String newPostalCode) {
    state = state.copyWith(postalCode: newPostalCode);
  }

  /// 住所(都道府県)
  void updateAddressPrefecture(String newPrefecture) {
    state = state.copyWith(addressPrefecture: newPrefecture);
  }

  /// 住所(市区町村)
  void updateAddressCity(String newCity) {
    state = state.copyWith(addressCity: newCity);
  }

  /// 住所(番地)
  void updateAddressStreet(String newStreet) {
    state = state.copyWith(addressStreet: newStreet);
  }

  /// 住所(マンション・建物名)
  void updateAddressBuilding(String newBuilding) {
    state = state.copyWith(addressBuilding: newBuilding);
  }

  /// 住所ふりがな
  void updateAddressKana(String newAddressKana) {
    state = state.copyWith(addressKana: newAddressKana);
  }

  /// 緊急郵便番号 - nullable
  void updateEmergencyPostalCode(String? newEmergencyPostalCode) {
    state = state.copyWith(emergencyPostalCode: newEmergencyPostalCode);
  }

  /// 緊急住所(都道府県) - nullable
  void updateEmergencyAddressPrefecture(String? newEmergencyPrefecture) {
    state = state.copyWith(emergencyAddressPrefecture: newEmergencyPrefecture);
  }

  /// 緊急住所(市区町村) - nullable
  void updateEmergencyAddressCity(String? newEmergencyCity) {
    state = state.copyWith(emergencyAddressCity: newEmergencyCity);
  }

  /// 緊急住所(番地) - nullable
  void updateEmergencyAddressStreet(String? newEmergencyStreet) {
    state = state.copyWith(emergencyAddressStreet: newEmergencyStreet);
  }

  /// 緊急住所(マンション・建物名) - nullable
  void updateEmergencyAddressBuilding(String? newEmergencyBuilding) {
    state = state.copyWith(emergencyAddressBuilding: newEmergencyBuilding);
  }

  /// 緊急住所ふりがな - nullable
  void updateEmergencyAddressKana(String? newEmergencyAddressKana) {
    state = state.copyWith(emergencyAddressKana: newEmergencyAddressKana);
  }

  void reset() {
    state = PersonalInfo();
  }
}

/// 個人情報をグローバルに提供する StateNotifierProvider
final personalInfoErrorMessageProvider =
StateNotifierProvider<PersonalInfoErrorMessageNotifier, PersonalInfo>(
      (ref) => PersonalInfoErrorMessageNotifier(),
);
