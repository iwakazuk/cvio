import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../provider/history_provider.dart';
import '../provider/personal_info_provider.dart';
import '../provider/preview_provider.dart';
import '../provider/resume_provider.dart';
import '../provider/resumes_provider.dart';
import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../utils/helper.dart';
import '../widgets/app_border.dart';
import '../widgets/app_container.dart';

class ResumesScreen extends HookConsumerWidget {
  const ResumesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resumes = ref.watch(resumesProvider);
    final resumesNotifier = ref.read(resumesProvider.notifier);

    // 履歴書（isCareer == false）
    final curriculumList =
        resumes.where((resume) => resume.isCareer == false).toList();
    // 職務経歴書（isCareer == true）
    final careerList =
        resumes.where((resume) => resume.isCareer == true).toList();

    // 編集モード判定と選択されたID管理
    final isEditing = useState(false);
    final selectedIds = useState<Set<String>>({});

    // 初回描画時にDBから読込
    useEffect(() {
      resumesNotifier.loadFromDb();
      return null;
    }, []);

    /// 選択済みのレジュメを削除し、編集を終了
    Future<void> deleteSelectedResumes() async {
      if (selectedIds.value.isNotEmpty) {
        resumesNotifier.deleteResumeIds(selectedIds.value.toList());
      }
      selectedIds.value = {};
      isEditing.value = false;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('一覧', style: AppTextStyle.header),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            resumesNotifier.reset();
            Navigator.pop(context);
          },
        ),
        actions: [
          // 編集モードの切替ボタン
          _buildEditButton(isEditing, selectedIds),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 履歴書
                      _buildResumeSection(
                        context,
                        title: '履歴書',
                        resumeList: curriculumList,
                        isEditing: isEditing.value,
                        selectedIds: selectedIds.value,
                        onToggleSelect: (id) => _toggleSelect(selectedIds, id),
                      ),
                      // 職務経歴書
                      _buildResumeSection(
                        context,
                        title: '職務経歴書',
                        resumeList: careerList,
                        isEditing: isEditing.value,
                        selectedIds: selectedIds.value,
                        onToggleSelect: (id) => _toggleSelect(selectedIds, id),
                      ),
                      AppSpace.hXL,
                      AppSpace.hXL,
                      AppSpace.hXL,
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: AnimatedSlide(
              offset: isEditing.value ? Offset(0, 0) : const Offset(0, 1),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: ClipRect(
                child: BackdropFilter(
                  // ブラー量は適宜調整
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black54,
                    child: SafeArea(
                      top: false,
                      child: Row(
                        children: [
                          const Spacer(),
                          TextButton(
                            onPressed: deleteSelectedResumes,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.delete,
                                  size: 20,
                                  color: Colors.deepOrange,
                                ),
                                AppSpace.wS,
                                Text(
                                  '削除',
                                  style: AppTextStyle.saveButton,
                                ),
                              ],
                            ),
                          ),
                          AppSpace.wM,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 「編集」「完了」の切替ボタン部分をまとめたウィジェット
  Widget _buildEditButton(
    ValueNotifier<bool> isEditing,
    ValueNotifier<Set<String>> selectedIds,
  ) {
    return isEditing.value
        ? InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              // 編集完了時に選択をクリア
              selectedIds.value = {};
              isEditing.value = false;
            },
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: AppSpace.pxL,
              child: Center(
                child: Text(
                  '完了',
                  style: AppTextStyle.saveButton,
                ),
              ),
            ))
        : InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => isEditing.value = true,
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: AppSpace.pxL,
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      size: 16,
                      Icons.edit,
                      color: Colors.deepOrange,
                    ),
                    AppSpace.wXS,
                    Text(
                      '編集',
                      style: AppTextStyle.saveButton,
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  /// 「履歴書」「職務経歴書」それぞれのリストセクションを作る共通処理
  Widget _buildResumeSection(
    BuildContext context, {
    required String title,
    required List<dynamic> resumeList,
    required bool isEditing,
    required Set<String> selectedIds,
    required Function(String) onToggleSelect,
  }) {
    if (resumeList.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpace.hXL,
        // 見出し
        Padding(
          padding: AppSpace.plM + AppSpace.plM + AppSpace.pbS,
          child: Text(
            title,
            style: AppTextStyle.sectionTitle,
          ),
        ),
        // リスト本体
        Padding(
          padding: AppSpace.pxM,
          child: Column(
            children: List.generate(
              resumeList.length,
              (i) {
                final resume = resumeList[i];
                final isSelected = selectedIds.contains(resume.id);
                return _buildResumeItem(
                  context,
                  resume: resume,
                  isEditing: isEditing,
                  isSelected: isSelected,
                  onToggleSelect: onToggleSelect,
                  // Containerの角丸を先頭と末尾だけ付ける
                  isFirst: i == 0,
                  isLast: i == resumeList.length - 1,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// リスト1行分のUIと区切り線を含めたWidget
  Widget _buildResumeItem(
    BuildContext context, {
    required dynamic resume,
    required bool isEditing,
    required bool isSelected,
    required Function(String) onToggleSelect,
    required bool isFirst,
    required bool isLast,
  }) {
    // 角丸 + 色（選択時のハイライトなど）
    final color = isSelected ? Colors.white24 : Colors.white10;
    final borderRadius = BorderRadius.only(
      topLeft: Radius.circular(isFirst ? 12 : 0),
      topRight: Radius.circular(isFirst ? 12 : 0),
      bottomLeft: Radius.circular(isLast ? 12 : 0),
      bottomRight: Radius.circular(isLast ? 12 : 0),
    );

    return Column(
      children: [
        Container(
          padding: AppSpace.pxM + AppSpace.pyS,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisAlignment: isEditing
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: isEditing ? 28 : 0,
                child: AnimatedOpacity(
                  opacity: isEditing ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Padding(
                    padding: AppSpace.prS,
                    // isEditing かどうかに関わらず常にアイコンは配置しておく
                    child: Icon(
                      size: 20,
                      isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: isSelected ? Colors.deepOrange : Colors.grey,
                    ),
                  ),
                ),
              ),

              // 中央のタップ可能エリア
              Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    if (isEditing) {
                      onToggleSelect(resume.id);
                    } else {
                      context.push('/preview', extra: resume.id);
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        resume.title ?? "",
                        style: AppTextStyle.sectionTitleBold,
                      ),
                      AppSpace.hXS,
                      Text(
                        resume.createDate != null
                            ? DateFormat('yyyy/MM/dd').format(resume.createDate)
                            : '',
                        style: AppTextStyle.sectionTitle,
                      ),
                    ],
                  ),
                ),
              ),
              // 編集モードでない場合は矢印アイコンを右端に表示
              if (!isEditing)
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.grey,
                ),
            ],
          ),
        ),
        // 最後の要素でない場合は区切り線
        if (!isLast)
          Container(
            color: color,
            padding: isEditing ? const EdgeInsets.only(left: 40) : AppSpace.plM,
            child: AppBorder(),
          ),
      ],
    );
  }

  /// 選択状態のオン・オフを切り替えるヘルパー
  void _toggleSelect(ValueNotifier<Set<String>> selectedIds, String id) {
    final newSet = Set<String>.from(selectedIds.value);
    if (newSet.contains(id)) {
      newSet.remove(id);
    } else {
      newSet.add(id);
    }
    selectedIds.value = newSet;
  }
}
