import 'dart:typed_data';
import 'package:cvio/scheme/academic_doc.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../helper/encryption_helper.dart';
import '../scheme/personal_info_doc.dart';
import '../scheme/qualification_doc.dart';
import '../scheme/work_doc.dart';

class IsarService {
  static Isar? _instance;

  static Future<Isar> getInstance() async {
    if (_instance != null) {
      return _instance!;
    }

    // 暗号化キーを SecureStorage から取り出し (32バイト)
    final Uint8List encKey = await EncryptionHelper.getEncryptionKey();

    final dir = await getApplicationDocumentsDirectory();

    final isar = Isar.open(
      schemas: [
        PersonalInfoDocSchema,
        AcademicDocSchema,
        QualificationDocSchema,
        WorkDocSchema,
      ],
      directory: dir.path,
      name: 'cvio',
      engine: IsarEngine.sqlite,
      encryptionKey: String.fromCharCodes(encKey),
    );

    _instance = isar;
    return isar;
  }
}
