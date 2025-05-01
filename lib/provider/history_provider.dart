import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/academic.dart';
import '../models/history.dart';
import '../models/personal_info.dart';
import '../models/qualification.dart';
import '../models/work.dart';
import '../repository/history_repository.dart';
import '../repository/personal_info_repository.dart';

/// 学歴・職歴を管理する StateNotifier
class HistoryNotifier extends StateNotifier<History> {
  final HistoryRepository _repository;

  HistoryNotifier(this._repository, History initial) : super(initial);

  // ──────────────────────────────
  // 共通：年/月降順で並べ替え
  List<Academic> _sortedAcademics(List<Academic> list) =>
      [...list]..sort((a, b) => a.compareTo(b));

  List<Work> _sortedWorks(List<Work> list) =>
      [...list]..sort((a, b) => a.compareTo(b));

  List<Qualification> _sortedQualifications(List<Qualification> list) =>
      [...list]..sort((a, b) => a.compareTo(b));

  // ──────────────────────────────
  /// DB から読み込み
  Future<History> loadFromDb() async {
    final loaded = await _repository.loadHistory();
    if (loaded != null) {
      state = loaded.copyWith(
        academics: _sortedAcademics(loaded.academics),
        works: _sortedWorks(loaded.works),
        qualifications: _sortedQualifications(loaded.qualifications),
      );
      return state;
    }
    return History();
  }

  /// 保存（変更なし）
  Future<bool> saveToDb() async {
    await _repository.saveHistory(state);
    return true;
  }

  // ──────────────────────────────
  /// 追加系
  void addAcademic(Academic academic) => state = state.copyWith(
          academics: _sortedAcademics(
        [...state.academics, academic],
      ));

  void addWork(Work work) => state = state.copyWith(
          works: _sortedWorks(
        [...state.works, work],
      ));

  void addQualification(Qualification q) => state = state.copyWith(
          qualifications: _sortedQualifications(
        [...state.qualifications, q],
      ));

  // ──────────────────────────────
  /// 更新系
  void updateAcademic(Academic academic, int index) {
    if (index < 0 || index >= state.academics.length) return;
    final list = [...state.academics]..[index] = academic;
    state = state.copyWith(academics: _sortedAcademics(list));
  }

  void updateWork(Work work, int index) {
    if (index < 0 || index >= state.works.length) return;
    final list = [...state.works]..[index] = work;
    state = state.copyWith(works: _sortedWorks(list));
  }

  void updateQualification(Qualification q, int index) {
    if (index < 0 || index >= state.qualifications.length) return;
    final list = [...state.qualifications]..[index] = q;
    state = state.copyWith(qualifications: _sortedQualifications(list));
  }

  // ──────────────────────────────
  /// 削除系（並び順は変わらないのでソート不要）
  void deleteAcademic(int index) {
    if (index < 0 || index >= state.academics.length) return;
    final list = [...state.academics]..removeAt(index);
    state = state.copyWith(academics: list);
  }

  void deleteWork(int index) {
    if (index < 0 || index >= state.works.length) return;
    final list = [...state.works]..removeAt(index);
    state = state.copyWith(works: list);
  }

  void deleteQualification(int index) {
    if (index < 0 || index >= state.qualifications.length) return;
    final list = [...state.qualifications]..removeAt(index);
    state = state.copyWith(qualifications: list);
  }

  void reset() => state = History();
}

/// 個人情報をグローバルに提供する StateNotifierProvider
final historyProvider = StateNotifierProvider<HistoryNotifier, History>((ref) {
  final repository = ref.watch(historyRepositoryProvider);

  // 初期状態は空
  final initialData = History();

  final notifier = HistoryNotifier(repository, initialData);
  return notifier;
});
