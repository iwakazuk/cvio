import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';
import '../repository/personal_info_repository.dart';

/// 個人情報を管理する StateNotifier
class PersonalInfoNotifier extends StateNotifier<PersonalInfo> {
  final PersonalInfoRepository _repository;
  final PersonalInfoErrorMessageNotifier _errorNotifier;
  bool isFixed = false;

  // コンストラクタ
  PersonalInfoNotifier(
    this._repository,
    this._errorNotifier,
    PersonalInfo initial,
  ) : super(initial);

  /// DB からデータを読み込み、state を更新
  Future<PersonalInfo> loadFromDb() async {
    final loaded = await _repository.loadPersonalInfo();
    if (loaded != null) {
      state = loaded;
    }
    return loaded ?? PersonalInfo();
  }

  /// DB に現在の state を保存
  /// return: 保存に成功した場合 true
  Future<bool> saveToDb() async {
    bool hasError = false;

    // バリデーション
    if (state.firstNameKana != null &&
        !RegExp(r'^[ぁ-ん]+$').hasMatch(state.firstNameKana!)) {
      hasError = true;
      _errorNotifier.updateFirstNameKana('ひらがなのみ入力可能です。');
    }
    if (state.lastNameKana != null &&
        !RegExp(r'^[ぁ-ん]+$').hasMatch(state.lastNameKana!)) {
      hasError = true;
      _errorNotifier.updateLastNameKana('ひらがなのみ入力可能です。');
    }
    if (state.addressKana != null &&
        !RegExp(r'^[ぁ-ん]+$').hasMatch(state.addressKana!)) {
      hasError = true;
      _errorNotifier.updateAddressKana('ひらがなのみ入力可能です。');
    }
    if (state.email != null &&
        !RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(state.email!)) {
      hasError = true;
      _errorNotifier.updateEmail('メールアドレスの形式が正しくありません。');
    }
    if (state.postalCode != null &&
        !RegExp(r'^[0-9]+$').hasMatch(state.postalCode!)) {
      hasError = true;
      _errorNotifier.updatePostalCode('数字のみ入力可能です。');
    }
    if (hasError) {
      return false;
    }

    await _repository.savePersonalInfo(state);
    isFixed = false;
    return true;
  }

  void updateImage(String? image) {
    isFixed = true;
    state = state.copyWith(image: image);
  }

  /// 氏
  void updateLastName(String newLastName) {
    isFixed = true;
    state = state.copyWith(lastName: newLastName);
  }

  /// 名
  void updateFirstName(String newFirstName) {
    isFixed = true;
    state = state.copyWith(firstName: newFirstName);
  }

  /// 氏ふりがな
  void updateLastNameKana(String newLastNameKana) {
    isFixed = true;
    state = state.copyWith(lastNameKana: newLastNameKana);
  }

  /// 名ふりがな
  void updateFirstNameKana(String newFirstNameKana) {
    isFixed = true;
    state = state.copyWith(firstNameKana: newFirstNameKana);
  }

  /// メールアドレス
  void updateEmail(String newEmail) {
    isFixed = true;
    state = state.copyWith(email: newEmail);
  }

  /// メールアドレス
  void updateEmergencyEmail(String newEmergencyEmail) {
    isFixed = true;
    state = state.copyWith(emergencyEmail: newEmergencyEmail);
  }

  /// 電話番号
  void updatePhone(String newPhone) {
    isFixed = true;
    state = state.copyWith(phone: newPhone);
  }

  /// 緊急電話番号
  void updateEmergencyPhone(String? newEmergencyPhone) {
    isFixed = true;
    state = state.copyWith(emergencyPhone: newEmergencyPhone);
  }

  /// 生年月日
  void updateBirthDay(String newBirthDay) {
    isFixed = true;
    state = state.copyWith(birthday: newBirthDay);
  }

  /// 性別
  void updateGender(String newGender) {
    isFixed = true;
    state = state.copyWith(gender: newGender);
  }

  /// 郵便番号
  void updatePostalCode(String newPostalCode) {
    isFixed = true;
    state = state.copyWith(postalCode: newPostalCode);
  }

  /// 住所(都道府県)
  void updateAddressPrefecture(String newPrefecture) {
    isFixed = true;
    state = state.copyWith(addressPrefecture: newPrefecture);
  }

  /// 住所(市区町村)
  void updateAddressCity(String newCity) {
    isFixed = true;
    state = state.copyWith(addressCity: newCity);
  }

  /// 住所(番地)
  void updateAddressStreet(String newStreet) {
    isFixed = true;
    state = state.copyWith(addressStreet: newStreet);
  }

  /// 住所(マンション・建物名)
  void updateAddressBuilding(String newBuilding) {
    isFixed = true;
    state = state.copyWith(addressBuilding: newBuilding);
  }

  /// 住所ふりがな
  void updateAddressKana(String newAddressKana) {
    isFixed = true;
    state = state.copyWith(addressKana: newAddressKana);
  }

  /// 緊急郵便番号 - nullable
  void updateEmergencyPostalCode(String? newEmergencyPostalCode) {
    isFixed = true;
    state = state.copyWith(emergencyPostalCode: newEmergencyPostalCode);
  }

  /// 緊急住所(都道府県) - nullable
  void updateEmergencyAddressPrefecture(String? newEmergencyPrefecture) {
    isFixed = true;
    state = state.copyWith(emergencyAddressPrefecture: newEmergencyPrefecture);
  }

  /// 緊急住所(市区町村) - nullable
  void updateEmergencyAddressCity(String? newEmergencyCity) {
    isFixed = true;
    state = state.copyWith(emergencyAddressCity: newEmergencyCity);
  }

  /// 緊急住所(番地) - nullable
  void updateEmergencyAddressStreet(String? newEmergencyStreet) {
    isFixed = true;
    state = state.copyWith(emergencyAddressStreet: newEmergencyStreet);
  }

  /// 緊急住所(マンション・建物名) - nullable
  void updateEmergencyAddressBuilding(String? newEmergencyBuilding) {
    isFixed = true;
    state = state.copyWith(emergencyAddressBuilding: newEmergencyBuilding);
  }

  /// 緊急住所ふりがな - nullable
  void updateEmergencyAddressKana(String? newEmergencyAddressKana) {
    isFixed = true;
    state = state.copyWith(emergencyAddressKana: newEmergencyAddressKana);
  }

  /// PersonalInfo 全体を一括で更新するメソッド
  void updateAll(PersonalInfo newInfo) {
    isFixed = true;
    state = newInfo;
  }

  /// リセット
  void reset() {
    isFixed = false;
    state = PersonalInfo();
  }
}

/// 個人情報をグローバルに提供する StateNotifierProvider
final personalInfoProvider =
    StateNotifierProvider<PersonalInfoNotifier, PersonalInfo>((ref) {
  final repository = ref.watch(personalInfoRepositoryProvider);
  final errorNotifier = ref.read(personalInfoErrorMessageProvider.notifier);

  // 初期状態は空
  final initialData = PersonalInfo();

  final notifier = PersonalInfoNotifier(
    repository,
    errorNotifier,
    initialData,
  );

  // アプリ起動時など、provider生成時にDBから読み込む
  // notifier.loadFromDb();

  return notifier;
});
