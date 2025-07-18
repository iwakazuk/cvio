import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'personal_info_screen.dart';
import 'history_screen.dart';
import 'resume_creation_screen.dart';

import '../utils/app_space.dart';
import '../utils/app_text_style.dart';

/// ------  HomeScreen  --------------------------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // ──────────────────────────────────────────────────────────────────────────
  // 共通：モーダルを開く
  // ──────────────────────────────────────────────────────────────────────────
  Future<void> _openModal(
      BuildContext context,
      Widget child,
      ) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ダッシュボード'),
        actions: [
          Builder(
            builder: (ctx) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(ctx).openEndDrawer(),
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
            // ── 機能カードリスト ────────────────────────────────
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
                    onTap: () => _openModal(context, PersonalInfoScreen()),
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.work,
                    label: '職歴・学歴',
                    onTap: () => _openModal(context, HistoryScreen()),
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.create,
                    label: '作成',
                    onTap: () =>
                        _openModal(context, ResumeCreationScreen()),
                  ),
                  _buildFeatureCard(
                    context,
                    icon: Icons.folder,
                    label: '一覧',
                    onTap: () => context.push('/resumes'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ──────────────────────────────────────────────────────────────────────────
  // UI パーツ
  // ──────────────────────────────────────────────────────────────────────────
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
              const SizedBox(height: 8),
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
            // ── ヘッダー ───────────────────────────────────────
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('メニュー',
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(height: 8),
                  Text('ようこそ！',
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
            // ── メニュー ───────────────────────────────────────
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const Divider(),
                  _drawerItem(
                    context,
                    icon: Icons.help_outline,
                    title: '使い方・ヘルプ',
                    onTap: () => context.push('/help'),
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.article,
                    title: '利用規約',
                    onTap: () => context.push('/terms'),
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.privacy_tip,
                    title: 'プライバシーポリシー',
                    onTap: () => context.push('/privacy'),
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.mail_outline,
                    title: 'お問い合わせ',
                    onTap: () => context.push('/contact'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'バージョン 1.0.0',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile _drawerItem(
      BuildContext context, {
        required IconData icon,
        required String title,
        required VoidCallback onTap,
      }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop(); // Drawer を閉じる
        onTap();
      },
    );
  }
}
