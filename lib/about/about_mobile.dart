// lib/sections/about/about_mobile.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: CustomColors.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Your image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/aboutme-image.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Fallback image/placeholder if 'aboutme-image.jpg' is not found
                return Container(
                  height: 200,
                  width: 200,
                  color: CustomColors.bgLight2,
                  child: Icon(
                    Icons.person,
                    color: CustomColors.whitePrimary.withOpacity(0.5),
                    size: 100,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // About Me Text
          const Text(
            'About Me',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            "I'm a seasoned data scientist and Flutter developer with a passion for building intelligent and scalable solutions. My expertise lies in leveraging machine learning to solve real-world problems and creating clean, responsive applications that deliver an excellent user experience.",
            style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            "I am dedicated to continuous learning and staying ahead of the curve in both data science and mobile development. Let's build something great together!",
            style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
