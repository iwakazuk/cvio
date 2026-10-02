import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/resume.dart';
import '../models/resume.dart';
import '../models/qualification.dart';
import '../models/work.dart';

class ResumeRepository {
  static const _resumeBoxName = 'resume_box';
  static const _resumeKey = 'resume';

  /// DB から [Resume] を読み込み
  Future<List<Resume>?> loadResume() async {
    final resumeBox = await Hive.openBox(_resumeBoxName);

    final resumeRaw = resumeBox.get(_resumeKey);

    if (resumeRaw == null) return null;

    final resumes = resumeRaw != null
        ? (jsonDecode(resumeRaw) as List)
            .map((e) => Resume.fromJson(e as Map<String, dynamic>))
            .toList()
        : <Resume>[];

    return resumes;
  }

  /// 複数の [resumes] を保存（全体上書き）
  Future<void> saveResumes(List<Resume> resumes) async {
    final resumeBox = await Hive.openBox(_resumeBoxName);
    final resumeJsonString =
    jsonEncode(resumes.map((r) => r.toJson()).toList());
    await resumeBox.put(_resumeKey, resumeJsonString);
  }

  /// [resume] をリストに追加して保存
  Future<void> addResume(Resume resume) async {
    final resumes = await loadResume() ?? [];
    resumes.add(resume);
    await saveResumes(resumes);
  }
}

final resumeRepositoryProvider = Provider<ResumeRepository>((ref) {
  return ResumeRepository();
});
