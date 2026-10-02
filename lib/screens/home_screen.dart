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
      ),
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
                    icon: Icons.cloud_upload_outlined,
                    label: 'エクスポート',
                    onTap: () => context.push('/export'),
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

}
