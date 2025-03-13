import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ダッシュボード'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Text(
                'メニュー',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('個人情報'),
              onTap: () {
                context.push('/personal-info');
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('職歴・学歴'),
              onTap: () {
                context.push('/education-and-work');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('作成'),
              onTap: () {
                context.push('/resume-creation-screen');
              },
            ),
            ListTile(
              leading: Icon(Icons.preview),
              title: Text('プレビュー'),
              onTap: () {
                context.push('/preview-screen');
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('履歴書一覧'),
              onTap: () {
                context.push('/resume-list');
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('ヘルプ'),
              onTap: () {
                context.push('/help');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: AppSpace.pxM,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 機能カードリスト
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding: AppSpace.pyL,
                children: [
                  _buildFeatureCard(
                    context,
                    icon: Icons.person,
                    label: '個人情報',
                    onTap: () {
                      context.push('/personal-info');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.work,
                    label: '職歴・学歴',
                    onTap: () {
                      context.push('/education-and-work');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.create,
                    label: '作成',
                    onTap: () {
                      context.push('/resume-creation-screen');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.folder,
                    label: '一覧',
                    onTap: () {
                      context.push('/resume-list');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white10,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: AppSpace.pyXS,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: Colors.deepOrange),
              SizedBox(height: 8),
              Text(label, style: AppTextStyle.sectionTitleBold),
            ],
          ),
        ),
      ),
    );
  }
}
