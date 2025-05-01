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
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: _drawer(context),
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
                      context.push('/history');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.create,
                    label: '作成',
                    onTap: () {
                      context.push('/resume-creation');
                    },
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.folder,
                    label: '一覧',
                    onTap: () {
                      context.push('/resumes');
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

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'メニュー',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'ようこそ！',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _drawerItem(
                    context,
                    icon: Icons.person,
                    title: '個人情報',
                    route: '/personal-info',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.work,
                    title: '職歴・学歴',
                    route: '/education-and-work',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.create,
                    title: '作成',
                    route: '/resume-creation',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.folder,
                    title: '履歴書一覧',
                    route: '/resumes',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.preview,
                    title: 'プレビュー',
                    route: '/preview',
                  ),
                  const Divider(),
                  _drawerItem(
                    context,
                    icon: Icons.help_outline,
                    title: '使い方・ヘルプ',
                    route: '/help',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.article,
                    title: '利用規約',
                    route: '/terms',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.privacy_tip,
                    title: 'プライバシーポリシー',
                    route: '/privacy',
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.mail_outline,
                    title: 'お問い合わせ',
                    route: '/contact',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'バージョン 1.0.0',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String route,
      }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange),
      title: Text(title),
      onTap: () {
        context.push(route);
      },
    );
  }

}
