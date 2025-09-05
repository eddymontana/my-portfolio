// lib/widgets/drawer_mobile.dart

import 'package:flutter/material.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
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
    return Drawer(
      backgroundColor: const Color(0xFF191a22),
      child: ListView(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(onPressed: null, icon: Icon(Icons.close)),
            ),
          ),
          ListTile(
            onTap: onAboutTap,
            title: const Text(
              'About Me',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: onSkillsTap,
            title: const Text('Skills', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            onTap: onProjectsTap,
            title: const Text(
              'Projects',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: onContactTap,
            title: const Text('Contact', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
