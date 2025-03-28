import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';
import '../repository/personal_info_repository.dart';

/// 個人情報を管理する StateNotifier
class PersonalInfoNotifier extends StateNotifier<PersonalInfo> {
  final PersonalInfoRepository _repository;
  final PersonalInfoErrorMessageNotifier _errorNotifier;

  // コンストラクタ
  PersonalInfoNotifier(
    this._repository,
    this._errorNotifier,
    PersonalInfo initial,
  ) : super(initial);

  /// DB からデータを読み込み、state を更新
  Future<void> loadFromDb() async {
    final loaded = await _repository.loadPersonalInfo();
    if (loaded != null) {
      state = loaded;
    }
  }

  /// DB に現在の state を保存
  /// return: 保存に成功した場合 true
  Future<bool> saveToDb() async {
    bool isEmpty = false;
    bool hasError = false;

    // 必須項目チェック
    if(state.lastName == null || state.lastName!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateLastName('このフィールドは必須です。');
    }
    if(state.firstName == null || state.firstName!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateFirstName('このフィールドは必須です。');
    }
    if(state.lastNameKana == null || state.lastNameKana!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateLastNameKana('このフィールドは必須です。');
    }
    if(state.firstNameKana == null || state.firstNameKana!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateFirstNameKana('このフィールドは必須です。');
    }
    if(state.email == null || state.email!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateEmail('このフィールドは必須です。');
    }
    if(state.phone == null || state.phone!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updatePhone('このフィールドは必須です。');
    }
    if(state.birthYear == null || state.birthYear!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateBirthYear('このフィールドは必須です。');
    }
    if(state.birthMonth == null || state.birthMonth!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateBirthMonth('このフィールドは必須です。');
    }
    if(state.birthDay == null || state.birthDay!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateBirthDay('このフィールドは必須です。');
    }
    if(state.postalCode == null || state.postalCode!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updatePostalCode('このフィールドは必須です。');
    }
    if(state.addressPrefecture == null || state.addressPrefecture!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateAddressPrefecture('このフィールドは必須です。');
    }
    if(state.addressCity == null || state.addressCity!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateAddressCity('このフィールドは必須です。');
    }
    if(state.addressStreet == null || state.addressStreet!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateAddressStreet('このフィールドは必須です。');
    }
    if(state.addressKana == null || state.addressKana!.isEmpty) {
      isEmpty = true;
      _errorNotifier.updateAddressKana('このフィールドは必須です。');
    }
    if(isEmpty) {
      return false;
    }

    // バリデーション
    if (!RegExp(r'^[ぁ-ん]+$').hasMatch(state.firstNameKana!)) {
      hasError = true;
      _errorNotifier.updateFirstNameKana('ひらがなのみ入力可能です。');
    }
    if (!RegExp(r'^[ぁ-ん]+$').hasMatch(state.lastNameKana!)) {
      hasError = true;
      _errorNotifier.updateLastNameKana('ひらがなのみ入力可能です。');
    }
    if (!RegExp(r'^[ぁ-ん]+$').hasMatch(state.addressKana!)) {
      hasError = true;
      _errorNotifier.updateAddressKana('ひらがなのみ入力可能です。');
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(state.email!)) {
      hasError = true;
      _errorNotifier.updateEmail('メールアドレスの形式が正しくありません。');
    }
    if(!RegExp(r'^[0-9]+$').hasMatch(state.postalCode!)) {
      hasError = true;
      _errorNotifier.updatePostalCode('数字のみ入力可能です。');
    }
    if(hasError) {
      return false;
    }

    await _repository.savePersonalInfo(state);

    return true;
  }

  void updateImage(String? image) {
    state = state.copyWith(image: image);
  }

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
  void updateEmergencyEmail(String newEmergencyEmail) {
    state = state.copyWith(emergencyEmail: newEmergencyEmail);
  }

  /// 電話番号
  void updatePhone(String newPhone) {
    state = state.copyWith(phone: newPhone);
  }

  /// 緊急電話番号
  void updateEmergencyPhone(String? newEmergencyPhone) {
    state = state.copyWith(emergencyPhone: newEmergencyPhone);
  }

  /// 生年月日1 (年)
  void updateBirthYear(String newBirthYear) {
    state = state.copyWith(birthYear: newBirthYear);
  }

  /// 生年月日2 (月)
  void updateBirthMonth(String newBirthMonth) {
    state = state.copyWith(birthMonth: newBirthMonth);
  }

  /// 生年月日3 (日)
  void updateBirthDay(String newBirthDay) {
    state = state.copyWith(birthDay: newBirthDay);
  }

  /// 年齢
  void updateAge(String newAge) {
    state = state.copyWith(age: newAge);
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

  /// PersonalInfo 全体を一括で更新するメソッド
  void updateAll(PersonalInfo newInfo) {
    state = newInfo;
  }

  /// リセット
  void reset() {
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
