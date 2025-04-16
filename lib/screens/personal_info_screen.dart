import 'dart:io';

import 'package:cvio/provider/personal_info_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../provider/personal_info_error_message_provider.dart';
import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_border.dart';
import '../widgets/app_container.dart';
import '../widgets/app_date_picker.dart';
import '../widgets/app_drop_down.dart';
import '../widgets/app_text_field.dart';

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
            personalInfoNotifier.reset();
            ref.read(personalInfoErrorMessageProvider.notifier).reset();
            Navigator.of(context).pop();
          },
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
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

            // 証明写真
            AppContainer(
              title: '証明写真',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _image(context, ref),
                  selectImageButton(ref),
                ],
              ),
            ),

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

            AppContainer(
              title: "生年月日",
              child: AppDatePicker(
                initialDate: personalInfo.birthday == null
                    ? null
                    : DateTime.parse(personalInfo.birthday!),
                label: '生年月日',
                firstDate: DateTime(1990),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                onDateSelected: (value) {
                  personalInfoNotifier.updateBirthDay(
                    value.toString(),
                  );
                },
              ),
            ),

            // 性別
            AppContainer(
              title: '性別',
              child: AppDropdown(
                label: '性別',
                initialValue: personalInfo.gender ?? '選択しない',
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
                    hintText: '任意',
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
                    label: 'E-mail',
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

  // 証明写真 表示用Widget例
  Widget _image(BuildContext context, WidgetRef ref) {
    final imagePath = ref.watch(personalInfoProvider).image;

    // パスが null なら未選択状態
    if (imagePath == null) {
      return const Text('まだ画像が選択されていません');
    }

    // 実ファイルの存在をチェック
    final file = File(imagePath);
    if (!file.existsSync()) {
      return const Text('まだ画像が選択されていません');
    }

    // ファイルが存在する場合のみ画像を表示
    return Padding(
      padding: AppSpace.pyM,
      child: Image.file(
        file,
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget selectImageButton(WidgetRef ref) {
    return PopupMenuButton<int>(
      tooltip: '',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      splashRadius: 12,
      borderRadius: BorderRadius.circular(12),
      color: Colors.grey[700],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white10,
        ),
        margin: AppSpace.pM,
        padding: AppSpace.pxM + AppSpace.pyXS,
        child: Text("変更"),
      ),
      onSelected: (value) {
        switch (value) {
          case 0:
            _pickImage(ref);
            break;
          case 1:
            _pickFile(ref);
            break;
          case 2:
            ref.read(personalInfoProvider.notifier).updateImage(null);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
        PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: const [
              Icon(Icons.image),
              AppSpace.wM,
              Text('写真ライブラリ'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: const [
              Icon(Icons.insert_drive_file),
              AppSpace.wM,
              Text('ファイルを選択'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Row(
            children: const [
              Icon(Icons.delete),
              AppSpace.wM,
              Text('画像を削除'),
            ],
          ),
        ),
      ],
    );
  }

  // ギャラリーから画像を選択（ImagePicker）
  Future<void> _pickImage(WidgetRef ref) async {
    try {
      final XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (pickedFile == null) return;
      // アプリの書き込み可能なディレクトリ（Documentフォルダなど）を取得
      final appDocDir = await getApplicationDocumentsDirectory();

      // 元のファイル名を使ってコピー先のパスを組み立てる
      final fileName = p.basename(pickedFile.path);
      final savedPath = p.join(appDocDir.path, fileName);

      // ファイルをコピー
      final savedFile = await File(pickedFile.path).copy(savedPath);
      ref.read(personalInfoProvider.notifier).updateImage(savedFile.path);
    } catch (e) {
      debugPrint('画像選択中にエラーが発生しました: $e');
    }
  }

  // FilePickerを使って画像ファイルを選択
  Future<void> _pickFile(WidgetRef ref) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg', 'heic'],
        allowMultiple: false,
      );
      if (result == null || result.files.isEmpty) return null;

      // 選択されたファイルのパス（仮）
      final pickedPath = result.files.single.path;
      if (pickedPath == null) return null;

      final docDir = await getApplicationDocumentsDirectory();
      final fileName = p.basename(pickedPath);
      final savedPath = p.join(docDir.path, fileName);

      // ドキュメントフォルダにコピー
      final savedFile = await File(pickedPath).copy(savedPath);

      ref.read(personalInfoProvider.notifier).updateImage(savedFile.path);
    } catch (e) {
      debugPrint('ファイル選択中にエラーが発生しました: $e');
    }
  }
}
