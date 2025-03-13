import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:cvio/widgets/app_container.dart';
import 'package:cvio/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_text_field.dart';

class ResumeCreationScreen extends StatefulWidget {
  @override
  _ResumeCreationScreenState createState() => _ResumeCreationScreenState();
}

class _ResumeCreationScreenState extends State<ResumeCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedType = '履歴書';
  String? _title;
  String? _content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('履歴書作成', style: AppTextStyle.header),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('学歴・職歴を保存しました')),
              );
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
            Padding(
              padding: AppSpace.pM,
              child: Row(
                children: [
                  Expanded(
                    child: CustomSlidingSegmentedControl<String>(
                      children: {
                        '履歴書': const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('履歴書'),
                        ),
                        '職務経歴書': const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('職務経歴書'),
                        ),
                      },
                      onValueChanged: (value) {
                        setState(() {
                          _selectedType = value;
                          // _content = null; // 必要に応じて
                        });
                      },
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      isStretch: true,
                    ),
                  ),
                ],
              ),
            ),
            AppContainer(
              title: "タイトル",
              child: AppTextField(
                hintText: 'タイトルを入力してください\n(例: 〇〇株式会社 〇月〇日)',
                keyboardType: TextInputType.multiline,
                onChanged: (value) {
                  _title = value;
                },
              ),
            ),
            AppContainer(
              title: _selectedType == '履歴書' ? '志望動機' : '自己PR',
              child: AppTextField(
                hintText:
                    _selectedType == '履歴書' ? '志望動機を入力してください' : '自己PRを入力してください',
                keyboardType: TextInputType.multiline,
                onChanged: (value) {
                  _content = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _createResume() {
    if (_formKey.currentState?.validate() ?? false) {
      // 入力内容を保存または次の処理
      final title = _title;
      final content = _content;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('「$title」が作成されました'),
        ),
      );

      // 必要なら次の画面へ遷移
    }
  }
}
