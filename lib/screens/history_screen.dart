import 'package:cvio/models/academic.dart';
import 'package:cvio/models/qualification.dart';
import 'package:cvio/models/work.dart';
import 'package:cvio/widgets/app_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_container.dart';
import '../provider/history_provider.dart';

class HistoryScreen extends HookConsumerWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProvider);
    final historyNotifier = ref.read(historyProvider.notifier);

    // 初回ビルド時（マウント時）だけ loadFromDb() を呼ぶ
    useEffect(() {
      historyNotifier.loadFromDb();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text('学歴・職歴入力', style: AppTextStyle.header),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            historyNotifier.reset();
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              final result = await historyNotifier.saveToDb();
              if (result) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('学歴・職歴を保存しました')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.error, color: Colors.red, size: 16),
                        AppSpace.wXS,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            "学歴・職歴の保存に失敗しました",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: AppSpace.pxL,
              child: Center(
                child: Text(
                  '保存',
                  style: AppTextStyle.saveButton,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.hM,

            AppContainer(
              title: '学歴',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 0; i < history.academics.length; i++)
                    _buildEducationCard(history.academics[i], i, ref),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => _addAcademic(context, ref),
                    child: Padding(
                      padding: AppSpace.pM,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.add, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('学歴を追加', style: AppTextStyle.sectionTitleBold),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 職歴
            AppContainer(
              title: '職歴',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 0; i < history.works.length; i++)
                    _buildWorkCard(history.works[i], i, ref),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => _addWork(context, ref),
                    child: Padding(
                      padding: AppSpace.pM,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.add, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('職歴を追加', style: AppTextStyle.sectionTitleBold),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 資格
            AppContainer(
              title: '資格',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 0; i < history.qualifications.length; i++)
                    _buildQualificationCard(history.qualifications[i], i, ref),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => _addQualification(context, ref),
                    child: Padding(
                      padding: AppSpace.pM,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.add, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('資格を追加', style: AppTextStyle.sectionTitleBold),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationCard(
    Academic academic,
    int index,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        ListTile(
          title: Text(academic.name ?? ''),
          subtitle: Text(
              '${academic.year ?? ''} 年 ${academic.month ?? ''} 月 - ${academic.isJoin == true ? '入学' : '卒業'} '),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              ref.read(historyProvider.notifier).deleteAcademic(index);
            },
          ),
        ),
        AppBorder(),
      ],
    );
  }

  Widget _buildWorkCard(
    Work work,
    int index,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        ListTile(
          title: Text(work.name ?? ''),
          subtitle: Text(
              '${work.year ?? ''} 年 ${work.month ?? ''} 月 - ${work.isJoin == true ? '入社' : '退職'}'),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              ref.read(historyProvider.notifier).deleteWork(index);
            },
          ),
        ),
        AppBorder(),
      ],
    );
  }

  Widget _buildQualificationCard(
    Qualification qualification,
    int index,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        ListTile(
          title: Text(qualification.name ?? ''),
          subtitle: Text(
              '${qualification.year ?? ''} 年 ${qualification.month ?? ''} 月'),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              ref.read(historyProvider.notifier).deleteQualification(index);
            },
          ),
        ),
        AppBorder(),
      ],
    );
  }

  // === 学歴を追加 ===
  Future<void> _addAcademic(BuildContext context, WidgetRef ref) async {
    final result = await _showAcademicInputDialog(context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addAcademic(result);
  }

  // === 職歴を追加 ===
  Future<void> _addWork(BuildContext context, WidgetRef ref) async {
    final result = await _showWorkInputDialog(context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addWork(result);
  }

  // === 資格を追加 ===
  Future<void> _addQualification(BuildContext context, WidgetRef ref) async {
    final result = await _showQualificationInputDialog(context: context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addQualification(result);
  }

  /// 学歴入力ダイアログを表示
  Future<Academic?> _showAcademicInputDialog(
    BuildContext context,
  ) async {
    final schoolNameController = TextEditingController();
    final majorController = TextEditingController();
    final yearController = TextEditingController();
    final monthController = TextEditingController();
    bool isJoin = true; // トグルの初期値（true: 入学, false: 卒業）

    return showDialog<Academic>(
      context: context,
      builder: (BuildContext context) {
        // ダイアログ内で状態を変化させるために StatefulBuilder を使用
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return AlertDialog(
              title: Text('学歴を追加'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 学校名
                    TextField(
                      controller: schoolNameController,
                      decoration: InputDecoration(labelText: '学校名'),
                    ),
                    // 専攻
                    TextField(
                      controller: majorController,
                      decoration: InputDecoration(labelText: '専攻'),
                    ),
                    // 入学or卒業の時期（dateLabel がトグルで変わる）
                    TextField(
                      controller: yearController,
                      decoration: InputDecoration(
                          labelText: isJoin ? '入学時期(年)' : '卒業時期(年)'),
                    ),
                    // 入学or卒業の時期（dateLabel がトグルで変わる）
                    TextField(
                      controller: monthController,
                      decoration: InputDecoration(
                          labelText: isJoin ? '入学時期(月)' : '卒業時期(月)'),
                    ),
                    // トグル
                    Row(
                      children: [
                        Text(isJoin ? '入学' : '卒業'),
                        Spacer(),
                        Switch(
                          value: isJoin,
                          onChanged: (value) {
                            setState(() {
                              isJoin = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, null),
                  child: Text('キャンセル'),
                ),
                TextButton(
                  onPressed: () {
                    // OKを押したら入力値をもとに Academic を生成し、ダイアログを閉じる
                    final newAcademic = Academic(
                      name: schoolNameController.text,
                      major: majorController.text,
                      year: yearController.text,
                      month: monthController.text,
                      isJoin: isJoin,
                    );
                    Navigator.pop(context, newAcademic);
                  },
                  child: Text('追加'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  /// 職歴入力ダイアログを表示
  Future<Work?> _showWorkInputDialog(
    BuildContext context,
  ) async {
    final nameController = TextEditingController();
    final positionController = TextEditingController();
    final yearController = TextEditingController();
    final monthController = TextEditingController();
    final descriptionController = TextEditingController();
    final reasonController = TextEditingController();
    bool isJoin = true;

    return showDialog<Work>(
      context: context,
      builder: (BuildContext context) {
        // ダイアログ内で状態を変化させるために StatefulBuilder を使用
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return AlertDialog(
              title: Text('職歴を追加'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 会社名
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: '会社名'),
                    ),
                    // 役職
                    TextField(
                      controller: positionController,
                      decoration: InputDecoration(labelText: '役職'),
                    ),
                    // 入社時期 / 退職時期（年）
                    TextField(
                      controller: yearController,
                      decoration: InputDecoration(
                          labelText: isJoin ? '入社時期(年)' : '退職時期(年)'),
                    ),
                    // 入社時期 / 退職時期（月）
                    TextField(
                      controller: monthController,
                      decoration: InputDecoration(
                          labelText: isJoin ? '入社時期(月)' : '退職時期(月)'),
                    ),
                    // 職務内容
                    if (isJoin)
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(labelText: '職務内容'),
                      ),
                    // 退職理由
                    if (!isJoin)
                      TextField(
                        controller: reasonController,
                        decoration: InputDecoration(labelText: '退職理由'),
                      ),
                    // トグル
                    Row(
                      children: [
                        Text(isJoin ? '入社' : '退職'),
                        Spacer(),
                        Switch(
                          value: isJoin,
                          onChanged: (value) {
                            setState(() {
                              isJoin = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, null),
                  child: Text('キャンセル'),
                ),
                TextButton(
                  onPressed: () {
                    final newWork = Work(
                      name: nameController.text,
                      position: positionController.text,
                      year: yearController.text,
                      month: monthController.text,
                      description: descriptionController.text,
                      reason: reasonController.text,
                      isJoin: isJoin,
                    );
                    Navigator.pop(context, newWork);
                  },
                  child: Text('追加'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  /// 資格入力ダイアログを表示
  Future<Qualification?> _showQualificationInputDialog({
    required BuildContext context,
  }) async {
    final nameController = TextEditingController();
    final yearController = TextEditingController();
    final monthController = TextEditingController();

    return showDialog<Qualification>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('資格を追加'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 資格名
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: '資格名'),
                ),
                // 取得時期（年）
                TextField(
                  controller: yearController,
                  decoration: InputDecoration(labelText: '取得時期(年)'),
                ),
                // 取得時期（月）
                TextField(
                  controller: monthController,
                  decoration: InputDecoration(labelText: '取得時期(月)'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, null),
              child: Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                final newQualification = Qualification(
                  name: nameController.text,
                  year: yearController.text,
                  month: monthController.text,
                );
                Navigator.pop(context, newQualification);
              },
              child: Text('追加'),
            ),
          ],
        );
      },
    );
  }
}
