// lib/widgets/skills_showcase.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/skills_items.dart';
import 'package:my_portfolio/widgets/skill_grid_item.dart';

class SkillsShowcase extends StatelessWidget {
  const SkillsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: skillItems.map((skill) {
        return SkillGridItem(img: skill['img']!, title: skill['title']!);
      }).toList(),
    );
  }
}
