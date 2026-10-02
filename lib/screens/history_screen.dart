import 'package:cvio/models/academic.dart';
import 'package:cvio/models/qualification.dart';
import 'package:cvio/models/work.dart';
import 'package:cvio/widgets/app_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_container.dart';
import '../provider/history_provider.dart';
import '../widgets/app_date_picker.dart';
import '../widgets/app_segment.dart';
import '../widgets/app_text_field.dart';

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
          icon: Icon(Icons.close_rounded),
          onPressed: () {
            if(historyNotifier.isFixed) {
              showDialog(
                context: context,
                builder: (dialogContext) => AlertDialog(
                  title: const Text('確認'),
                  content: const Text('変更を保存せずに閉じますか？'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(dialogContext),
                      child: Text('キャンセル'),
                    ),
                    TextButton(
                      onPressed: () {
                        historyNotifier.reset();
                        Navigator.pop(dialogContext);
                        Navigator.pop(context);
                      },
                      child: Text('閉じる'),
                    ),
                  ],
                ),
              );
              return;
            } else {
              historyNotifier.reset();
              Navigator.pop(context);
            }
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
                    _buildEducationCard(context, history.academics[i], i, ref),
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
                    _buildWorkCard(context, history.works[i], i, ref),
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
                    _buildQualificationCard(
                        context, history.qualifications[i], i, ref),
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
            AppSpace.hXL,
          ],
        ),
      ),
    );
  }

  Widget _buildEducationCard(
    BuildContext context,
    Academic academic,
    int index,
    WidgetRef ref,
  ) {
    return InkWell(
      onTap: () async {
        final edited = await _showAcademicBottomSheet(
          context,
          initialValue: academic,
        );
        if (edited != null) {
          ref.read(historyProvider.notifier).updateAcademic(edited, index);
        }
      },
      child: Column(
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
      ),
    );
  }

  Widget _buildWorkCard(
    BuildContext context,
    Work work,
    int index,
    WidgetRef ref,
  ) {
    return InkWell(
      onTap: () async {
        final edited = await _showWorkBottomSheet(
          context,
          initialValue: work,
        );
        if (edited != null) {
          ref.read(historyProvider.notifier).updateWork(edited, index);
        }
      },
      child: Column(
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
      ),
    );
  }

  Widget _buildQualificationCard(
    BuildContext context,
    Qualification qualification,
    int index,
    WidgetRef ref,
  ) {
    return InkWell(
      onTap: () async {
        final edited = await _showQualificationBottomSheet(
          context,
          initialValue: qualification,
        );
        if (edited != null) {
          ref.read(historyProvider.notifier).updateQualification(edited, index);
        }
      },
      child: Column(
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
      ),
    );
  }

  // === 学歴を追加 ===
  Future<void> _addAcademic(BuildContext context, WidgetRef ref) async {
    final result = await _showAcademicBottomSheet(context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addAcademic(result);
  }

  // === 職歴を追加 ===
  Future<void> _addWork(BuildContext context, WidgetRef ref) async {
    final result = await _showWorkBottomSheet(context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addWork(result);
  }

  // === 資格を追加 ===
  Future<void> _addQualification(BuildContext context, WidgetRef ref) async {
    final result = await _showQualificationBottomSheet(context);
    if (result == null) return;
    ref.read(historyProvider.notifier).addQualification(result);
  }

  // ──────────────────────────────────────────
  // 職歴入力 BottomSheet
  Future<Work?> _showWorkBottomSheet(
    BuildContext context, {
    Work? initialValue,
  }) async {
    String? name = initialValue?.name;
    String? position = initialValue?.position;
    String? year = initialValue?.year;
    String? month = initialValue?.month;
    String? description = initialValue?.description;
    String? reason = initialValue?.reason;
    bool isJoin = initialValue?.isJoin ?? true;
    final initialDate = year != null && month != null
        ? DateTime(
            int.parse(year),
            int.parse(month),
          )
        : null;
    final textCtrl = TextEditingController(
      text: isJoin ? description ?? '' : reason ?? '',
    );

    const List<String> kWorkDescriptionTemplates = [
      '営業統括本部に配属し新規開拓営業を担当',
      '企画部で新規サービスの市場調査と事業計画立案を担当',
      '総務部で社内イベント企画運営および備品管理を担当',
      '人事部にて採用面接の調整・内定者フォローを担当',
      '経理部で月次決算業務および請求書発行を担当',
      'カスタマーサポート部門で問い合わせ対応とFAQ整備を担当',
      '物流センターで在庫管理と出荷手配を担当',
      'コールセンターにてオペレーターとして顧客対応を担当',
    ];

    const List<String> kWorkReasonTemplates = [
      '一身上の都合により',
      '会社都合により',
      '契約期間満了のため',
      '結婚のため',
      '出産のため',
      '家族の介護のため',
    ];

    Future<void> _pickTemplate() async {
      final List<String> templates =
          isJoin ? kWorkDescriptionTemplates : kWorkReasonTemplates;
      final picked = await showDialog<String>(
        context: context,
        builder: (ctx) => Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'テンプレートを選択',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const AppBorder(),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < templates.length; ++i) ...[
                        SimpleDialogOption(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          onPressed: () => Navigator.pop(ctx, templates[i]),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(templates[i]),
                          ),
                        ),
                        if (i != templates.length - 1) const AppBorder(),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      if (picked != null) {
        if (isJoin) {
          description = picked;
        } else {
          reason = picked;
        }
        textCtrl.text = picked;
      }
    }

    return showModalBottomSheet<Work>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: DraggableScrollableSheet(
          initialChildSize: .85,
          minChildSize: .4,
          maxChildSize: .95,
          builder: (_, scrollCtrl) => Container(
            decoration: BoxDecoration(
              color: Theme.of(ctx).colorScheme.surface,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: StatefulBuilder(
              builder: (_, setState) => SingleChildScrollView(
                controller: scrollCtrl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // グリップ & アクションバー
                    const SizedBox(height: 8),
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child:
                                Text('キャンセル', style: AppTextStyle.saveButton),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () => Navigator.pop(
                              context,
                              Work(
                                name: name,
                                position: position,
                                year: year,
                                month: month,
                                description: isJoin ? description : null,
                                reason: isJoin ? null : reason,
                                isJoin: isJoin,
                              ),
                            ),
                            child: Text('追加', style: AppTextStyle.saveButton),
                          ),
                        ],
                      ),
                    ),

                    // 入力フォーム
                    AppContainer(
                      title: '職歴を追加',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextField(
                            label: '会社名',
                            hintText: '会社名を入力',
                            initialValue: name,
                            onChanged: (v) => name = v,
                          ),
                          const AppBorder(),
                          AppTextField(
                            label: '役職',
                            hintText: '役職を入力',
                            initialValue: position,
                            onChanged: (v) => position = v,
                          ),
                          const AppBorder(),
                          AppSegment(
                            label: '入社 / 退職',
                            values: const ['入社', '退職'],
                            onChanged: (v) => setState(() => isJoin = v),
                          ),
                          const AppBorder(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      isJoin ? '職務内容' : '退職理由',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    AppSpace.wS,
                                    InkWell(
                                      onTap: () => _pickTemplate(),
                                      child: const Icon(
                                        Icons.error_outline,
                                        color: Colors.deepOrange,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: textCtrl,
                                  decoration: InputDecoration(
                                    hintText: isJoin ? '職務内容を入力' : '退職理由を入力',
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  maxLines: null,
                                  textInputAction: TextInputAction.newline,
                                  keyboardType: TextInputType.multiline,
                                  onChanged: (v) {
                                    if (isJoin) {
                                      description = v;
                                    } else {
                                      reason = v;
                                    }
                                  },
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              AppSpace.wM,
                            ],
                          ),
                          const AppBorder(),
                          AppDatePicker(
                            mode: CupertinoDatePickerMode.monthYear,
                            label: isJoin ? '入社時期' : '退職時期',
                            initialDate: initialDate,
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                            onDateSelected: (d) {
                              setState(() {
                                year = d.year.toString();
                                month = d.month.toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ──────────────────────────────────────────
  // 資格入力 BottomSheet
  Future<Qualification?> _showQualificationBottomSheet(
    BuildContext context, {
    Qualification? initialValue,
  }) async {
    String? name = initialValue?.name;
    String? year = initialValue?.year;
    String? month = initialValue?.month;

    final textCtrl = TextEditingController(text: name ?? '');

    const List<String> kQualificationTemplates = [
      '普通自動車第一種運転免許',
      '普通自動車第一種運転免許（AT限定）',
      '実用英語技能検定〇級',
      'TOEIC公開テスト 〇〇点',
      'TOEFL iBT 〇〇点',
      '日商簿記検定試験〇級',
      'MOS Word エキスパート',
      'FP技能検定2級',
      '秘書検定2級',
    ];

    Future<void> _pickTemplate() async {
      final List<String> templates = kQualificationTemplates;
      final picked = await showDialog<String>(
        context: context,
        builder: (ctx) => Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'テンプレートを選択',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const AppBorder(),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < templates.length; ++i) ...[
                        SimpleDialogOption(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          onPressed: () => Navigator.pop(ctx, templates[i]),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(templates[i]),
                          ),
                        ),
                        if (i != templates.length - 1) const AppBorder(),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      if (picked != null) {
        name = picked;
        textCtrl.text = picked;
      }
    }

    return showModalBottomSheet<Qualification>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: DraggableScrollableSheet(
          initialChildSize: .6,
          minChildSize: .4,
          maxChildSize: .8,
          builder: (_, scrollCtrl) => Container(
            decoration: BoxDecoration(
              color: Theme.of(ctx).colorScheme.surface,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: StatefulBuilder(
              builder: (_, setState) => SingleChildScrollView(
                controller: scrollCtrl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8),
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child:
                                Text('キャンセル', style: AppTextStyle.saveButton),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () => Navigator.pop(
                              context,
                              Qualification(
                                name: name,
                                year: year,
                                month: month,
                              ),
                            ),
                            child: Text('追加', style: AppTextStyle.saveButton),
                          ),
                        ],
                      ),
                    ),

                    // フォーム
                    AppContainer(
                      title: '資格を追加',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '資格名',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    AppSpace.wS,
                                    InkWell(
                                      onTap: () => _pickTemplate(),
                                      child: const Icon(
                                        Icons.error_outline,
                                        color: Colors.deepOrange,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: textCtrl,
                                  decoration: InputDecoration(
                                    hintText: '資格名を入力',
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  maxLines: null,
                                  textInputAction: TextInputAction.newline,
                                  keyboardType: TextInputType.multiline,
                                  onChanged: (v) {
                                    name = v;
                                  },
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              AppSpace.wM,
                            ],
                          ),
                          const AppBorder(),
                          AppDatePicker(
                            mode: CupertinoDatePickerMode.monthYear,
                            label: '取得時期',
                            initialDate: null,
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                            onDateSelected: (d) {
                              setState(() {
                                year = d.year.toString();
                                month = d.month.toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ──────────────────────────────────────────
  // 学歴入力 BottomSheet
  Future<Academic?> _showAcademicBottomSheet(
    BuildContext context, {
    Academic? initialValue,
  }) async {
    var name = initialValue?.name;
    var major = initialValue?.major;
    var year = initialValue?.year;
    var month = initialValue?.month;
    bool isJoin = initialValue?.isJoin ?? true;

    return showModalBottomSheet<Academic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return Padding(
          // キーボード分だけ持ち上げる
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
          child: DraggableScrollableSheet(
            initialChildSize: 0.8,
            minChildSize: 0.4,
            maxChildSize: 0.95,
            builder: (_, scrollCtrl) => Container(
              decoration: BoxDecoration(
                color: Theme.of(ctx).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: StatefulBuilder(
                builder: (_, setState) => SingleChildScrollView(
                  controller: scrollCtrl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // グリップ
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          margin: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, null),
                              child:
                                  Text('キャンセル', style: AppTextStyle.saveButton),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () => Navigator.pop(
                                context,
                                Academic(
                                  name: name,
                                  major: major,
                                  year: year,
                                  month: month,
                                  isJoin: isJoin,
                                ),
                              ),
                              child: Text('追加', style: AppTextStyle.saveButton),
                            ),
                          ],
                        ),
                      ),

                      AppContainer(
                        title: '学歴を追加',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppTextField(
                              label: '学校名',
                              hintText: '学校名を入力',
                              onChanged: (value) {
                                name = value;
                              },
                            ),
                            AppBorder(),
                            AppTextField(
                              label: '専攻',
                              hintText: '専攻を入力',
                              onChanged: (value) {
                                major = value;
                              },
                            ),
                            AppBorder(),
                            AppSegment(
                              label: '入学 / 卒業',
                              values: ['入学', '卒業'],
                              onChanged: (value) {
                                setState(() {
                                  isJoin = value;
                                });
                              },
                            ),
                            AppBorder(),
                            AppDatePicker(
                              mode: CupertinoDatePickerMode.monthYear,
                              initialDate: null,
                              firstDate: DateTime.now(),
                              label: isJoin ? '入学時期' : '卒業時期',
                              lastDate:
                                  DateTime.now().add(const Duration(days: 365)),
                              onDateSelected: (value) {
                                setState(() {
                                  year = value.year.toString();
                                  month = value.month.toString();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
