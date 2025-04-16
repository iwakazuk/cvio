import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../models/resume.dart';

/// テンプレートPDFを読み込み、Resumeの内容を埋め込んでPDFを生成
Future<File> fillTemplatePdf(Resume resume) async {
  // 1. アセットからテンプレートPDFを読み込む
  final ByteData templateData =
      await rootBundle.load(resume.path ?? 'assets/pdf/resume_template.pdf');
  final Uint8List templateBytes = templateData.buffer.asUint8List();

  // 2. SyncfusionのPDFドキュメントに読み込み
  final PdfDocument document = PdfDocument(inputBytes: templateBytes);

  // 3. フォームフィールドにデータをセット
  final PdfForm form = document.form;

  // Syncfusionの PdfFormFieldCollection は .count, [index] でアクセス
  if (form.fields.count > 0) {
    // タイトル
    final PdfTextBoxField? titleField =
        _getTextBoxFieldByName(form, 'fieldTitle');
    titleField?.text = resume.title ?? '';

    // 自己PR or 志望動機
    final PdfTextBoxField? contentField =
        _getTextBoxFieldByName(form, 'fieldContent');
    contentField?.text = resume.content ?? '';

    // 日付
    final PdfTextBoxField? dateField =
        _getTextBoxFieldByName(form, 'fieldDate');
    dateField?.text =
        '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}';

    // 職務概要（isCareer == true のとき）
    if (resume.isCareer == true) {
      final PdfTextBoxField? subField =
          _getTextBoxFieldByName(form, 'fieldSummary');
      subField?.text = resume.subContent ?? '';
    }
  }

  // 4. 保存（非同期）
  final List<int> updatedPdfBytes = await document.save(); // ← await を追加

  // 5. 解放
  document.dispose();

  // 6. 一時ディレクトリに保存
  final tempDir = await getTemporaryDirectory();
  final filePath =
      '${tempDir.path}/resume_output_${DateTime.now().millisecondsSinceEpoch}.pdf';
  final File outFile = File(filePath);
  await outFile.writeAsBytes(updatedPdfBytes);

  return outFile;
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
