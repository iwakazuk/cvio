import 'package:cvio/provider/personal_info_error_message_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/personal_info.dart';
import '../models/resume.dart';
import '../repository/personal_info_repository.dart';
import '../repository/resume_repository.dart';

/// プレビュー画面を管理する StateNotifier
class PreviewNotifier extends StateNotifier<Preview> {

  // コンストラクタ
  PreviewNotifier(
    Preview initial,
  ) : super(initial);

  /// PDFの読み込み完了
  void onPdfLoaded(int totalPages) {
    state = state.copyWith(
      isLoaded: true,
      totalPages: totalPages,
      currentPage: 0,
    );
  }

  /// PDFのページ変更
  void onPageChanged(int currentPage) {
    state = state.copyWith(
      currentPage: currentPage,
    );
  }

  /// リセット
  void reset() {
    state = Preview();
  }
}

/// family対応StateNotifierProvider
final previewProvider =
    StateNotifierProvider.family<PreviewNotifier, Preview, String>((ref, key) {

  // 初期値を取得（なければ空のPreview）
  return PreviewNotifier(
    Preview(),
  );
});

class Preview {
  final bool isLoaded;
  final int totalPages;
  final int currentPage;

  Preview({
    this.isLoaded = false,
    this.totalPages = 0,
    this.currentPage = 0,
  });

  Preview copyWith({
    bool? isLoaded,
    int? totalPages,
    int? currentPage,
  }) {
    return Preview(
      isLoaded: isLoaded ?? this.isLoaded,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
