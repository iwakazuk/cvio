import 'package:cvio/widgets/app_border.dart';
import 'package:cvio/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../widgets/app_container.dart';
import '../widgets/secondary_button.dart';

class EducationAndWorkScreen extends StatefulWidget {
  @override
  _EducationAndWorkScreenState createState() => _EducationAndWorkScreenState();
}

class _EducationAndWorkScreenState extends State<EducationAndWorkScreen> {
  final List<Map<String, String>> _educationList = [];
  final List<Map<String, String>> _workList = [];
  final List<Map<String, String>> _qualificationList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学歴・職歴入力', style: AppTextStyle.header),
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

            AppContainer(
              title: '学歴',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (final education in _educationList)
                    _buildEducationCard(education),
                  if (_educationList.isNotEmpty) AppBorder(),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: _addEducation,
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
                  for (final work in _workList) _buildWorkCard(work),
                  if (_workList.isNotEmpty) AppBorder(),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: _addWork,
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
                  for (final qualification in _qualificationList)
                    _buildQualificationCard(qualification),
                  if (_qualificationList.isNotEmpty) AppBorder(),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: _addQualification,
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

  Widget _buildEducationCard(Map<String, String> education) {
    return ListTile(
      title: Text(education['schoolName'] ?? ''),
      subtitle: Text(
        '${education['major'] ?? ''} - ${education['graduationYear'] ?? ''}',
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            _educationList.remove(education);
          });
        },
      ),
    );
  }

  Widget _buildWorkCard(Map<String, String> work) {
    return ListTile(
      title: Text(work['companyName'] ?? ''),
      subtitle: Text('${work['position'] ?? ''} - ${work['workPeriod'] ?? ''}'),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            _workList.remove(work);
          });
        },
      ),
    );
  }

  Widget _buildQualificationCard(Map<String, String> qualification) {
    return ListTile(
      title: Text(qualification['qualificationName'] ?? ''),
      subtitle: Text('${qualification['date'] ?? ''}'),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            _qualificationList.remove(qualification);
          });
        },
      ),
    );
  }

  void _addEducation() async {
    final newEducation = await _showInputDialog(
      title: '学歴を追加',
      fields: ['学校名', '専攻', '卒業年度'],
    );
    if (newEducation != null) {
      setState(() {
        _educationList.add({
          'schoolName': newEducation[0],
          'major': newEducation[1],
          'graduationYear': newEducation[2],
        });
      });
    }
  }

  void _addWork() async {
    final newWork = await _showInputDialog(
      title: '職歴を追加',
      fields: ['会社名', '役職', '勤務期間', '職務内容'],
    );
    if (newWork != null) {
      setState(() {
        _workList.add({
          'companyName': newWork[0],
          'position': newWork[1],
          'workPeriod': newWork[2],
          'description': newWork[3],
        });
      });
    }
  }

  void _addQualification() async {
    final newQualification = await _showInputDialog(
      title: '資格を追加',
      fields: ['資格名', '取得日'],
    );
    if (newQualification != null) {
      setState(() {
        _qualificationList.add({
          'qualificationName': newQualification[0],
          'date': newQualification[1],
        });
      });
    }
  }

  Future<List<String>?> _showInputDialog({
    required String title,
    required List<String> fields,
  }) async {
    final controllers = fields.map((_) => TextEditingController()).toList();
    return await showDialog<List<String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < fields.length; i++)
                TextField(
                  controller: controllers[i],
                  decoration: InputDecoration(labelText: fields[i]),
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, controllers.map((c) => c.text).toList());
              },
              child: Text('追加'),
            ),
          ],
        );
      },
    );
  }

  void _saveData() {
    // 保存処理
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('学歴・職歴を保存しました')),
    );
  }
}
