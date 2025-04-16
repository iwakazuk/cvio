import 'dart:io';

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
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
import '../widgets/app_text_field.dart';

class ResumeCreationScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identifier = useMemoized(() => Uuid().v4());
    final providerKey = useState(identifier);

    final resume = ref.watch(resumeProvider(providerKey.value));
    final resumeNotifier = ref.read(resumeProvider(providerKey.value).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('履歴書作成', style: AppTextStyle.header),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.hM,
            Padding(
              padding: AppSpace.pM,
              child: Row(
                children: [
                  Expanded(
                    child: CustomSlidingSegmentedControl<String>(
                      height: 30,
                      children: {
                        '履歴書': const Padding(
                          padding: AppSpace.pXS,
                          child: Text('履歴書'),
                        ),
                        '職務経歴書': const Padding(
                          padding: AppSpace.pXS,
                          child: Text('職務経歴書'),
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
                        color: Theme.of(context).disabledColor.withAlpha(70),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      isStretch: true,
                    ),
                  ),
                ],
              ),
            ),
            AppContainer(
              title: "",
              child: AppDatePicker(
                label: "作成日",
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                onDateSelected: (dateTime) {
                  resumeNotifier.updateCreateDate(dateTime);
                },
              ),
            ),
            AppContainer(
              title: "タイトル",
              child: AppTextField(
                hintText: 'タイトルを入力してください\n(例: 〇〇株式会社 履歴書)',
                keyboardType: TextInputType.multiline,
                onChanged: (value) {
                  final formatted = value.replaceAll('\n', '');
                  resumeNotifier.updateTitle(formatted);
                },
              ),
            ),
            if (resume.isCareer == true)
              AppContainer(
                title: "職務概要",
                child: AppTextField(
                  hintText:
                      '(例: 大学卒業後、株式会社XXに入社。XX事業部・XX職として配属されました。主にXXを担当し、XXに関する業務やXXに携わってきました。)\n',
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    resumeNotifier.updateSubContent(value);
                  },
                ),
              ),
            AppContainer(
              title: resume.isCareer == true ? '志望動機' : '自己PR',
              child: AppTextField(
                hintText: resume.isCareer == true
                    ? '志望動機を入力してください\n\n\n\n'
                    : '自己PRを入力してください\n\n\n\n',
                keyboardType: TextInputType.multiline,
                onChanged: (value) {
                  resumeNotifier.updateContent(value);
                },
              ),
            ),
            if (resume.isCareer != true)
              AppContainer(
                title: "本人希望欄",
                child: AppTextField(
                  hintText: '(例: 連絡可能な時間帯、帰社時間の希望、希望職種、希望年収 etc.)\n\n\n',
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    resumeNotifier.updateSubContent(value);
                  },
                ),
              ),
            AppSpace.hM,
            Center(
              child: PrimaryButton(
                label: '作成',
                onPressed: () {
                  final message = resume.isCareer == true
                      ? '職務経歴書'
                      : '履歴書';
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
}
