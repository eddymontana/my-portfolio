// lib/sections/skills/skills_mobile.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skills_showcase.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: CustomColors.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "What I can do",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0),
          SkillsShowcase(),
        ],
      ),
    );
  }
}
