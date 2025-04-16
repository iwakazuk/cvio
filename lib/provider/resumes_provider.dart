import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';
import '../models/resume.dart';
import '../repository/personal_info_repository.dart';
import '../repository/resume_repository.dart';

/// 個人情報を管理する StateNotifier
class ResumesNotifier extends StateNotifier<List<Resume>> {
  final ResumeRepository _repository;

  // コンストラクタ
  ResumesNotifier(
    this._repository,
      List<Resume> initial,
  ) : super(initial);

  /// DB からデータを読み込み、state を更新
  Future<void> loadFromDb() async {
    final loaded = await _repository.loadResume();
    if (loaded != null) {
      state = loaded;
    }
  }

  /// 特定のResumeを削除
  void deleteResume(Resume resume) {
    state = state.where((r) => r != resume).toList();
  }

  void deleteResumes(List<Resume> resumes) {
    state = state.where((r) => !resumes.contains(r)).toList();
  }

  void deleteResumeIds(List<String> ids) {
    state = state.where((r) => !ids.contains(r.id)).toList();
    _repository.saveResumes(state);
  }

  /// リセット
  void reset() {
    state = [];
  }
}

/// family対応StateNotifierProvider
final resumesProvider =
    StateNotifierProvider<ResumesNotifier, List<Resume>>((ref) {
  final repository = ref.watch(resumeRepositoryProvider);

  // 初期値を取得（なければ空のResume）
  return ResumesNotifier(
    repository,
    [],
  );
});
