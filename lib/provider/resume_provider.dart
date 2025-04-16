import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../models/personal_info.dart';
import '../models/resume.dart';
import '../repository/personal_info_repository.dart';
import '../repository/resume_repository.dart';

/// 個人情報を管理する StateNotifier
class ResumeNotifier extends StateNotifier<Resume> {
  final ResumeRepository _repository;

  // コンストラクタ
  ResumeNotifier(
    this._repository,
    Resume initial,
  ) : super(initial);

  /// 履歴書の種類を変更
  /// [type] : '履歴書' or '職務経歴書'
  void onChangeType(String type) {
    state = state.copyWith(
      isCareer: type == '職務経歴書',
      content: null,
      subContent: null,
      path: type == '職務経歴書'
          ? 'assets/pdf/curriculum_vitae.pdf'
          : 'assets/pdf/resume_template.pdf',
    );
  }

  void loadFromDb(String key) async {
    final loaded = await _repository.loadResume();
    final resume = loaded?.where((r) => r.id == key).first;
    if (resume != null) {
      state = resume;
    }
  }

  /// 履歴書のタイトルを変更
  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  /// 履歴書の作成日を変更
  void updateCreateDate(DateTime createDate) {
    state = state.copyWith(createDate: createDate);
  }

  /// 履歴書の内容を変更
  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  /// 履歴書の内容を変更
  void updateSubContent(String subContent) {
    state = state.copyWith(subContent: subContent);
  }

  /// DB に現在の state を保存
  /// return: 保存に成功した場合 true
  Future<bool> saveToDb(Resume resume) async {
    final id = Uuid().v4();
    final resumes = await _repository.loadResume() ?? [];
    resumes.add(resume.copyWith(id: id));
    await _repository.saveResumes(resumes);
    return true;
  }

  /// リセット
  void reset() {
    state = Resume(isCareer: false);
  }
}

/// family対応StateNotifierProvider
final resumeProvider =
    StateNotifierProvider.family<ResumeNotifier, Resume, String>((ref, key) {
  final repository = ref.watch(resumeRepositoryProvider);

  // 初期値を取得（なければ空のResume）
  return ResumeNotifier(
    repository,
    Resume(
      id: key,
      isCareer: false,
      createDate: DateTime.now(),
      path: 'assets/pdf/resume_template.pdf',
    ),
  );
});
