import 'package:cvio/screens/personal_info/personal_info_error_message_provider.dart';
import 'package:cvio/screens/personal_info/personal_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/app_space.dart';
import '../../utils/app_text_style.dart';
import '../../widgets/app_border.dart';
import '../../widgets/app_container.dart';
import '../../widgets/app_drop_down.dart';
import '../../widgets/app_text_field.dart';

class PersonalInfoScreen extends HookConsumerWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personalInfo = ref.watch(personalInfoProvider);
    final personalInfoNotifier = ref.read(personalInfoProvider.notifier);
    final errorMessage = ref.watch(personalInfoErrorMessageProvider);

    // 初回ビルド時（マウント時）だけ loadFromDb() を呼ぶ
    useEffect(() {
      personalInfoNotifier.loadFromDb();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text('個人情報登録', style: AppTextStyle.header),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            ref.read(personalInfoErrorMessageProvider.notifier).reset();
            Navigator.of(context).pop();
          },
        ),
        actions: [
          InkWell(
            onTap: () async {
              ref.read(personalInfoErrorMessageProvider.notifier).reset();
              final result = await personalInfoNotifier.saveToDb();
              if (result) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('個人情報を保存しました')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.error, color: Colors.red, size: 16),
                        AppSpace.wXS,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            "個人情報の保存に失敗しました",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: AppSpace.pxL,
              child: Center(
                child: Text(
                  '保存',
                  style: AppTextStyle.saveButton,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.hM,

            // 氏名
            AppContainer(
              title: '氏名',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    label: '姓（ふりがな）',
                    initialValue: personalInfo.lastNameKana,
                    hintText: '必須',
                    errorText: errorMessage.lastNameKana,
                    onChanged: (value) {
                      personalInfoNotifier.updateLastNameKana(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '名（ふりがな）',
                    initialValue: personalInfo.firstNameKana,
                    hintText: '必須',
                    errorText: errorMessage.firstNameKana,
                    onChanged: (value) {
                      personalInfoNotifier.updateFirstNameKana(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '姓',
                    initialValue: personalInfo.lastName,
                    hintText: '必須',
                    errorText: errorMessage.lastName,
                    onChanged: (value) {
                      personalInfoNotifier.updateLastName(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '名',
                    initialValue: personalInfo.firstName,
                    hintText: '必須',
                    errorText: errorMessage.firstName,
                    onChanged: (value) {
                      personalInfoNotifier.updateFirstName(value);
                    },
                  ),
                ],
              ),
            ),

            // 生年月日
            AppContainer(
              title: '生年月日',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppDropdown(
                    label: '年',
                    initialValue: personalInfo.birthYear,
                    errorText: errorMessage.birthYear,
                    values: [
                      for (var i = 1900; i <= 2025; i++) i.toString(),
                    ],
                    onChanged: (value) {
                      personalInfoNotifier.updateBirthYear(value!);
                    },
                  ),
                  AppBorder(),
                  AppDropdown(
                    label: '月',
                    initialValue: personalInfo.birthMonth,
                    errorText: errorMessage.birthMonth,
                    values: [
                      for (var i = 1; i <= 12; i++) i.toString(),
                    ],
                    onChanged: (value) {
                      personalInfoNotifier.updateBirthMonth(value!);
                    },
                  ),
                  AppBorder(),
                  AppDropdown(
                    label: '日',
                    initialValue: personalInfo.birthDay,
                    errorText: errorMessage.birthDay,
                    values: [
                      for (var i = 1; i <= 31; i++) i.toString(),
                    ],
                    onChanged: (value) {
                      personalInfoNotifier.updateBirthDay(value!);
                    },
                  ),
                ],
              ),
            ),

            // 性別
            AppContainer(
              title: '性別',
              child: AppDropdown(
                label: '性別',
                initialValue: personalInfo.gender,
                values: ['男性', '女性', '選択しない'],
                onChanged: (value) {
                  personalInfoNotifier.updateGender(value!);
                },
              ),
            ),

            // 連絡先
            AppContainer(
              title: '連絡先',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    label: '電話番号',
                    initialValue: personalInfo.phone,
                    hintText: '必須',
                    errorText: errorMessage.phone,
                    onChanged: (value) {
                      personalInfoNotifier.updatePhone(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: 'Email',
                    initialValue: personalInfo.email,
                    hintText: '必須',
                    errorText: errorMessage.email,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmail(value);
                    },
                  ),
                ],
              ),
            ),

            // 住所
            AppContainer(
              title: '住所',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    label: '郵便番号',
                    initialValue: personalInfo.postalCode,
                    hintText: '必須',
                    errorText: errorMessage.postalCode,
                    onChanged: (value) {
                      personalInfoNotifier.updatePostalCode(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '都道府県',
                    initialValue: personalInfo.addressPrefecture,
                    hintText: '必須',
                    errorText: errorMessage.addressPrefecture,
                    onChanged: (value) {
                      personalInfoNotifier.updateAddressPrefecture(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '市区町村',
                    initialValue: personalInfo.addressCity,
                    hintText: '必須',
                    errorText: errorMessage.addressCity,
                    onChanged: (value) {
                      personalInfoNotifier.updateAddressCity(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '番地',
                    initialValue: personalInfo.addressStreet,
                    hintText: '必須',
                    errorText: errorMessage.addressStreet,
                    onChanged: (value) {
                      personalInfoNotifier.updateAddressStreet(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '建物名',
                    initialValue: personalInfo.addressBuilding,
                    hintText: '任意',
                    errorText: errorMessage.addressBuilding,
                    onChanged: (value) {
                      personalInfoNotifier.updateAddressBuilding(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '住所ふりがな',
                    initialValue: personalInfo.addressKana,
                    hintText: '必須',
                    errorText: errorMessage.addressKana,
                    onChanged: (value) {
                      personalInfoNotifier.updateAddressKana(value);
                    },
                  ),
                ],
              ),
            ),

            AppContainer(
              title: "緊急連絡先　　※現住所と異なる場合のみ入力",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    label: '電話番号',
                    initialValue: personalInfo.emergencyPhone,
                    hintText: '任意',
                    errorText: errorMessage.emergencyPhone,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyPhone(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: 'Email',
                    initialValue: personalInfo.emergencyEmail,
                    hintText: '任意',
                    errorText: errorMessage.emergencyEmail,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyEmail(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '郵便番号',
                    initialValue: personalInfo.emergencyPostalCode,
                    hintText: '任意',
                    errorText: errorMessage.emergencyPostalCode,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyPostalCode(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '都道府県',
                    initialValue: personalInfo.emergencyAddressPrefecture,
                    hintText: '任意',
                    errorText: errorMessage.emergencyAddressPrefecture,
                    onChanged: (value) {
                      personalInfoNotifier
                          .updateEmergencyAddressPrefecture(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '市区町村',
                    initialValue: personalInfo.emergencyAddressCity,
                    hintText: '任意',
                    errorText: errorMessage.emergencyAddressCity,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyAddressCity(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '番地',
                    initialValue: personalInfo.emergencyAddressStreet,
                    hintText: '任意',
                    errorText: errorMessage.emergencyAddressStreet,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyAddressStreet(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '建物名',
                    initialValue: personalInfo.emergencyAddressBuilding,
                    hintText: '任意',
                    errorText: errorMessage.emergencyAddressBuilding,
                    onChanged: (value) {
                      personalInfoNotifier
                          .updateEmergencyAddressBuilding(value);
                    },
                  ),
                  AppBorder(),
                  AppTextField(
                    label: '住所ふりがな',
                    initialValue: personalInfo.emergencyAddressKana,
                    hintText: '任意',
                    errorText: errorMessage.emergencyAddressKana,
                    onChanged: (value) {
                      personalInfoNotifier.updateEmergencyAddressKana(value);
                    },
                  ),
                ],
              ),
            ),
            AppSpace.hL,
          ],
        ),
      ),
    );
  }
}
