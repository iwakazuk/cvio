import 'dart:io';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:cvio/widgets/app_border.dart';
import 'package:cvio/widgets/app_container.dart';
import 'package:cvio/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

import '../models/resume.dart';
import '../provider/resume_provider.dart';
import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../utils/helper.dart';
import '../widgets/app_date_picker.dart';
import '../widgets/app_drop_down.dart';
import '../widgets/app_text_field.dart';
import '../widgets/template_container.dart';

class ResumeCreationScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identifier = useMemoized(() => Uuid().v4());
    final providerKey = useState(identifier);

    final resume = ref.watch(resumeProvider(providerKey.value));
    final resumeNotifier = ref.read(resumeProvider(providerKey.value).notifier);
    final label = resume.isCareer == true ? '職務経歴書' : '履歴書';

    return Scaffold(
      appBar: AppBar(
        title: Text('$label作成', style: AppTextStyle.header),
        leading: IconButton(
          icon: Icon(Icons.close_rounded),
          onPressed: () {
            if(resumeNotifier.isFixed) {
              showDialog(context: context, builder: (dialogContext) {
                return AlertDialog(
                  title: const Text('確認'),
                  content: const Text('変更を保存せずに閉じますか？'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('キャンセル'),
                    ),
                    TextButton(
                      onPressed: () {
                        resumeNotifier.reset();
                        Navigator.pop(dialogContext);
                        Navigator.of(context).pop();
                      },
                      child: const Text('閉じる'),
                    ),
                  ],
                );
              });
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.hM,
            AppContainer(
              title: "設定",
              child: Column(
                children: [
                  AppTextField(
                    label: "タイトル",
                    hintText: '例: 〇〇株式会社の履歴書',
                    keyboardType: TextInputType.multiline,
                    onChanged: (value) {
                      final formatted = value.replaceAll('\n', '');
                      resumeNotifier.updateTitle(formatted);
                    },
                  ),
                  AppBorder(),
                  AppDatePicker(
                    label: "作成日",
                    initialDate: resume.createDate ?? DateTime.now(),
                    firstDate: DateTime(1990),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                    onDateSelected: (dateTime) {
                      resumeNotifier.updateCreateDate(dateTime);
                    },
                  ),
                  AppBorder(),
                  Row(
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          'カテゴリ',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: AppSpace.prM + AppSpace.pyS,
                          child: CustomSlidingSegmentedControl<String>(
                            height: 30,
                            children: {
                              '履歴書': const Padding(
                                padding: AppSpace.pXS,
                                child: Text(
                                  '履歴書',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              '職務経歴書': const Padding(
                                padding: AppSpace.pXS,
                                child: Text(
                                  '職務経歴書',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            },
                            onValueChanged: (value) {
                              resumeNotifier.onChangeType(value);
                            },
                            decoration: BoxDecoration(
                              color: Theme.of(context).focusColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            thumbDecoration: BoxDecoration(
                              color:
                                  Theme.of(context).disabledColor.withAlpha(70),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            isStretch: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppBorder(),
                  AppDropdown(
                    label: 'フォント',
                    initialValue: resume.font ?? 'NotoSansJp',
                    values: [
                      'NotoSansJp',
                      'NotoSerifJP',
                      'ZenKakuGothic',
                      'ZenOldMincho',
                      'BIZUDPGothic'
                    ],
                    onChanged: (value) {
                      resumeNotifier.updateFont(value);
                    },
                  ),
                ],
              ),
            ),
            TemplateContainer(
              title: "自己PR",
              initialValue: resume.selfPR,
              hintText: '自己PRを入力してください\n\n\n\n',
              templates: selfPRTemplates,
              onChanged: (value) {
                resumeNotifier.updateSelfPR(value);
              },
            ),
            TemplateContainer(
              title: resume.isCareer != true ? '志望動機' : '職務要約',
              initialValue: resume.content,
              templates: resume.isCareer != true
                  ? motivationTemplates
                  : jobSummaryTemplates,
              hintText: resume.isCareer != true
                  ? '志望動機を入力してください\n\n\n\n'
                  : '職務要約を入力してください\n\n\n\n',
              onChanged: (value) {
                resumeNotifier.updateContent(value);
              },
            ),
            if (resume.isCareer != true)
              TemplateContainer(
                title: "本人希望欄",
                initialValue: resume.subContent,
                hintText: '(例: 連絡可能な時間帯、帰社時間の希望、希望職種、希望年収 etc.)\n\n\n',
                templates: preferenceTemplates,
                onChanged: (value) {
                  resumeNotifier.updateSubContent(value);
                },
              ),
            AppSpace.hM,
            Center(
              child: PrimaryButton(
                label: '作成',
                onPressed: () {
                  final message = resume.isCareer == true ? '職務経歴書' : '履歴書';
                  resumeNotifier.saveToDb(resume).then((success) async {
                    if (success) {
                      try {
                        // 作成失敗時の処理
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('$messageの作成に成功しました')),
                        );

                        // PDFファイルプレビュー画面へ遷移
                        context.push('/preview', extra: providerKey.value);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('PDFの作成に失敗しました')),
                        );
                      }
                    } else {
                      // 作成失敗時の処理
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('$messageの作成に失敗しました')),
                      );
                    }
                  });
                },
              ),
            ),
            AppSpace.hXL,
          ],
        ),
      ),
    );
  }

  List<String> get selfPRTemplates {
    return [
      '現職にてXXを目的としたXXに関わり、実務経験を積んできました。新しい技術や情報についても積極的に勉強し、チームのメンバーも交えて情報共有しながら実務で活かすように取り組んでいます。',
      '現職では、XXメーカーのXX業務に長年携わっていました。ターゲットであるXXに適したXXなどの施策を実施し、前年対比XXX％の売上を達成しました。今までに学んできたXXの経験を、今回応募した貴社のXXでも活かしたいと考えています。',
      '現職にてマネージャーをX年間経験しまし、社員が互いに刺激を与え合いながら成長していく組織作りに注力してきました。結果、社員同士の意識が目標に対して統一され、速やかな数値達成ができました。柔軟な対応力とXXの経験を、今回応募した貴社のXXでも活かしたいと考えています。',
      'ケアレスミスをなくし、常に効率改善の余地がないか考えながら業務に取り組むように心がけています。現職では業務フローの見直しや日々の書類業務の自動化を主導しまし、全体の作業時間をXX％短縮させることに成功しました。特にXX関連業務の書類・ドキュメント作成の経験が豊富なことが強みです。',
      'XXがきっかけでXXという仕事に魅力を感じ、XXスクールやXX講座に通い自主的に勉強を続けてきました。今回、実務経験がなくても熱意や意欲次第で採用を検討されていると拝見し、応募をさせていただきました。未経験ではありますが、XXに関する知識やスキルを高める努力をしながら貴社の事業に貢献したいと考えています。',
    ];
  }

  List<String> get motivationTemplates {
    return [
      '前職ではX年間にわたってXX業務に携わってきました。貴社のXXについては以前から興味を感じており、XXな部分に大変魅力を感じます。今までの経験を活かしながら、さらにXXなどのスキルを身につけ、貴社におけるXX業務に貢献したいと考え志望しました。',
      '貴社が取り組まれているXX事業に関心があり、応募いたしました。特にXXな点に非常に魅力的を感じています。これまでの私の経験を最大限活用しつつ、ぜひ貴社の一員としてその成長に関わりたいと考えております。',
      '自分のXXXという経験・スキルを活かして貴社に貢献できると考え、この度応募いたしました。今までの経験を活かしながら新しい業務にもチャレンジし、貴社の事業や組織の成長に貢献しながら自分も成長したいと考えております。',
      '貴社のXXXXという企業ビジョンに共感するものがあり、今回応募いたしました。私自身もXXXXという点を大切にしたいと考えており、そのようなビジョンを大切にしている方々と一緒に働きたいと考えております。',
      '貴社の個々の裁量が大きい職場環境に対して魅力を感じ、今回応募いたしました。責任感を持ちながら、工夫を重ねて成果を出していく職場環境であるということに、自身が成長できる可能性と魅力を感じます。',
      '貴社で働かれている社員の方々をXXXXで拝見し、その働き方に魅力を感じて応募いたしました。その中でもXXXという点が、自身の価値観や仕事感に近いと感じました。XXXXを行うことで、貴社への価値貢献をしたいと考えております。',
      '前職ではXXに従事しておりましたが、よりXXに貢献できるような仕事をしたいと考えておりました。今回、貴社のXX求人を拝見し自分もこのような環境で挑戦してみたいと考え、転職を決意致しました。',
      '前職ではXX業務に携わり貴重な経験を得ましたが、もう一度XXに戻りたいという思いが強くなりこの度貴社を志望致しました。今までの実務経験の強みを活かしながら、新しい技術に関しても積極的に勉強していきたいと考えています。',
    ];
  }

  List<String> get jobSummaryTemplates {
    return [
      '大学卒業後、株式会社XXに入社。XX事業部・XX職として配属されました。主にXXを担当し、XXに関する業務やXXに携わってきました。',
      '大学を卒業後、新卒でXX会社に入社しXX職としてXX業界のXXに携わりました。2社目のXX社ではXX職としてXXやXXを担当、XXの経験を積みました。',
      '大学を卒業後、XX会社のXX職をX年勤めたのち、XX会社のXX職やXX会社のXX職を経験。20XX年より株式会社XXに入社し、XX職として勤務。主にXXに従事し、XXやXXの業務を担当しています。',
    ];
  }

  List<String> get preferenceTemplates {
    return [
      '連絡可能な時間帯：電話の場合、平日〇〇時以降、または土日祝日',
      '帰社時間の希望：平日〇〇時以降',
      '希望職種：〇〇職',
      '現在年収：〇〇万円、希望年収：〇〇万円',
      '希望勤務地：〇〇県、〇〇市',
      '貴社規定に従います'
    ];
  }
}
