import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../models/history.dart';
import '../models/personal_info.dart';
import '../models/resume.dart';

/// テンプレートPDFを読み込み、Resumeの内容を埋め込んでPDFを生成
Future<File> fillTemplatePdf({
  required PersonalInfo personalInfo,
  required Resume resume,
  required History history,
}) async {
  print('personalInfo: ${personalInfo.lastName} ${resume.isCareer} ${history.works.length}');
  // 1. アセットからテンプレートPDFを読み込む
  final ByteData templateData =
      await rootBundle.load(resume.path ?? 'assets/pdf/resume_template.pdf');
  final Uint8List templateBytes = templateData.buffer.asUint8List();

  // 2. SyncfusionのPDFドキュメントに読み込み
  final PdfDocument document = PdfDocument(inputBytes: templateBytes);

  // 3. フォームフィールドにデータをセット
  final PdfForm form = document.form;

  if (form.fields.count > 0) {
    // 個人情報をPDFにセット
    await setPersonalInfoToPdf(form, personalInfo);
  }

  // 4. PDFを保存
  //    ※ お使いの Syncfusion バージョンによっては同期メソッドの場合あり
  final List<int> updatedPdfBytes = await document.save();

  // 5. リソース解放
  document.dispose();

  // 6. 一時ディレクトリに保存してFileを返す
  final tempDir = await getTemporaryDirectory();
  final filePath =
      '${tempDir.path}/resume_output_${DateTime.now().millisecondsSinceEpoch}.pdf';
  final File outFile = File(filePath);
  await outFile.writeAsBytes(updatedPdfBytes);

  return outFile;
}

/// 個人情報をPDFにセットしつつ、中央揃えやフォントサイズを調整
Future<void> setPersonalInfoToPdf(
  PdfForm form,
  PersonalInfo personalInfo,
) async {

  // 2-2. 日本語用フォントをロード
  //     (例: NotoSansJP-Regular.ttf を 12pt で使う場合)
  final ByteData fontData =
  await rootBundle.load('assets/fonts/NotoSansJP-Medium.ttf');
  final Uint8List fontBytes = fontData.buffer.asUint8List();

  // テキストボックスを取得し設定を反映する関数
  void setTextField(
    String fieldName,
    String? value, {
    PdfTextAlignment alignment = PdfTextAlignment.justify,
    fontSize = 12.0,
  }) {
    final field = _getTextBoxFieldByName(form, fieldName);
    if (field != null) {
      final PdfFont font = PdfTrueTypeFont(fontBytes, fontSize);
      // フォントと文字揃えを設定
      field.font = font;
      field.textAlignment = alignment;
      // テキストをセット
      field.text = value ?? '';
    }
  }

  // テキスト情報を入力
  setTextField('lastName', personalInfo.lastName, alignment: PdfTextAlignment.right, fontSize: 30.0);
  setTextField('firstName', personalInfo.firstName, fontSize: 30.0);
  setTextField('lastNameKana', personalInfo.lastNameKana, alignment: PdfTextAlignment.right);
  setTextField('firstNameKana', personalInfo.firstNameKana);
  setTextField('email', personalInfo.email);
  setTextField('phone', personalInfo.phone, alignment: PdfTextAlignment.center);
  setTextField('birthYear', personalInfo.birthYear, alignment: PdfTextAlignment.right);
  setTextField('birthMonth', personalInfo.birthMonth, alignment: PdfTextAlignment.right);
  setTextField('birthDay', personalInfo.birthDay, alignment: PdfTextAlignment.right);
  setTextField('age', personalInfo.age, alignment: PdfTextAlignment.right);
  setTextField('addressKana', personalInfo.addressKana);
  setTextField('address', personalInfo.address);
  setTextField('gender', personalInfo.gender);


  // 画像フィールドに画像を設定
  // 事前に PDF テンプレート側で「profile_image」という
  // PdfImageField (フォームフィールド) を用意している前提
  _drawProfileImage(form, personalInfo.image);
}

/// フォームフィールド名に一致するテキストフィールドを探す
PdfTextBoxField? _getTextBoxFieldByName(PdfForm form, String fieldName) {
  for (int i = 0; i < form.fields.count; i++) {
    final field = form.fields[i];
    if (field is PdfTextBoxField && field.name == fieldName) {
      return field;
    }
  }
  return null;
}

/// 画像フィールドを探す
Future<void> _drawProfileImage(PdfForm form, String? imagePath) async {
  if (imagePath == null || imagePath.isEmpty) return;

  // Button フィールドを取得
  PdfButtonField? btn;
  for (var i = 0; i < form.fields.count; i++) {
    final f = form.fields[i];
    if (f is PdfButtonField && f.name == 'profileImage') {
      btn = f;
      break;
    }
  }
  if (btn == null) return;

  // バイト列取得（assets でも File でも可）
  final Uint8List imgBytes = await File(imagePath).readAsBytes();

  // ページ座標へ描画
  btn.page?.graphics.drawImage(
    PdfBitmap(imgBytes),
    btn.bounds,
  );
}
