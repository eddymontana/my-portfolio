// lib/widgets/header_desktop.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    this.onMainTap,
    this.onAboutTap,
    this.onSkillsTap,
    this.onProjectsTap,
    this.onContactTap, // Add this line
  });

  final VoidCallback? onMainTap;
  final VoidCallback? onAboutTap;
  final VoidCallback? onSkillsTap;
  final VoidCallback? onProjectsTap;
  final VoidCallback? onContactTap; // Add this line

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: CustomColors.bgLight1,
      child: Row(
        children: [
          const Text(
            'My Portfolio',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onAboutTap,
            child: const Text(
              'About Me',
              style: TextStyle(color: CustomColors.whitePrimary),
            ),
          ),
          TextButton(
            onPressed: onSkillsTap,
            child: const Text(
              'Skills',
              style: TextStyle(color: CustomColors.whitePrimary),
            ),
          ),
          TextButton(
            onPressed: onProjectsTap,
            child: const Text(
              'Projects',
              style: TextStyle(color: CustomColors.whitePrimary),
            ),
          ),
          TextButton(
            onPressed: onContactTap,
            child: const Text(
              'Contact',
              style: TextStyle(color: CustomColors.whitePrimary),
            ),
          ),
        ],
      ),
    );
  }
}
