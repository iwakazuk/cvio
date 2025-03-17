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

  // コンストラクタ
  HistoryNotifier(
      this._repository,
      History initial,
      ) : super(initial);

  /// DB からデータを読み込み、state を更新
  Future<void> loadFromDb() async {
    final loaded = await _repository.loadHistory();
    if (loaded != null) {
      state = loaded;
    }
  }

  /// DB に現在の state を保存
  /// return: 保存に成功した場合 true
  Future<bool> saveToDb() async {
    await _repository.saveHistory(state);
    return true;
  }

  // ------------------------------------------------------------
  // List全体をまとめて置き換える既存メソッド
  // ------------------------------------------------------------
  /// 学歴を一括で更新
  void updateAcademics(List<Academic> newAcademic) {
    state = state.copyWith(academics: newAcademic);
  }

  /// 職歴を一括で更新
  void updateWorks(List<Work> newWork) {
    state = state.copyWith(works: newWork);
  }

  /// 資格を一括で更新
  void updateQualifications(List<Qualification> newQualification) {
    state = state.copyWith(qualifications: newQualification);
  }

  /// History 全体を一括で更新するメソッド（オマケ）
  void updateAll(History newInfo) {
    state = newInfo;
  }

  // ------------------------------------------------------------
  // 以下、1件ずつ追加 / 更新 / 削除するメソッドを追加
  // ------------------------------------------------------------

  // ========= Academic =========
  /// 学歴を1件追加
  void addAcademic(Academic academic) {
    final newAcademics = [...state.academics];
    newAcademics.add(academic);
    state = state.copyWith(academics: newAcademics);
  }

  /// 学歴を1件更新（[index]番目を[academic]で上書き）
  void updateAcademic(Academic academic, int index) {
    if (index < 0 || index >= state.academics.length) return;
    final newAcademics = [...state.academics];
    newAcademics[index] = academic;
    state = state.copyWith(academics: newAcademics);
  }

  /// 学歴を1件削除（[index]番目を削除）
  void deleteAcademic(int index) {
    if (index < 0 || index >= state.academics.length) return;
    final newAcademics = [...state.academics];
    newAcademics.removeAt(index);
    state = state.copyWith(academics: newAcademics);
  }

  // ========= Work =========
  /// 職歴を1件追加
  void addWork(Work work) {
    final newWorks = [...state.works];
    newWorks.add(work);
    state = state.copyWith(works: newWorks);
  }

  /// 職歴を1件更新
  void updateWork(Work work, int index) {
    if (index < 0 || index >= state.works.length) return;
    final newWorks = [...state.works];
    newWorks[index] = work;
    state = state.copyWith(works: newWorks);
  }

  /// 職歴を1件削除
  void deleteWork(int index) {
    if (index < 0 || index >= state.works.length) return;
    final newWorks = [...state.works];
    newWorks.removeAt(index);
    state = state.copyWith(works: newWorks);
  }

  // ========= Qualification =========
  /// 資格を1件追加
  void addQualification(Qualification qualification) {
    final newQualifications = [...state.qualifications];
    newQualifications.add(qualification);
    state = state.copyWith(qualifications: newQualifications);
  }

  /// 資格を1件更新
  void updateQualification(Qualification qualification, int index) {
    if (index < 0 || index >= state.qualifications.length) return;
    final newQualifications = [...state.qualifications];
    newQualifications[index] = qualification;
    state = state.copyWith(qualifications: newQualifications);
  }

  /// 資格を1件削除
  void deleteQualification(int index) {
    if (index < 0 || index >= state.qualifications.length) return;
    final newQualifications = [...state.qualifications];
    newQualifications.removeAt(index);
    state = state.copyWith(qualifications: newQualifications);
  }

  /// リセット
  void reset() {
    state = History();
  }
}

/// 個人情報をグローバルに提供する StateNotifierProvider
final historyProvider = StateNotifierProvider<HistoryNotifier, History>((ref) {
  final repository = ref.watch(historyRepositoryProvider);

  // 初期状態は空
  final initialData = History();

  final notifier = HistoryNotifier(repository, initialData);
  return notifier;
});
