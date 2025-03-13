import 'package:cvio/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../utils/app_space.dart';

class AppContainer extends StatelessWidget {
  final String title;
  final Widget child;

  AppContainer({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpace.pM,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppSpace.plM,
            child: Text(
              title,
              style: AppTextStyle.sectionTitle,
            ),
          ),
          AppSpace.hS,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white10,
            ),
            padding: const EdgeInsets.only(left: 16),
            child: child,
          ),
        ],
      ),
    );
  }
}
