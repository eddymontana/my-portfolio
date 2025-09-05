// lib/sections/about/about_desktop.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      color: CustomColors.bgLight1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Your image with error handling and professional styling
          ClipRRect(
            borderRadius: BorderRadius.circular(
              10,
            ), // Consistent rounded corners
            child: Image.asset(
              'assets/aboutme-image.jpg', // Correct image path
              height: 300,
              width: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Fallback image/placeholder if 'aboutme-image.jpg' is not found
                return Container(
                  height: 300,
                  width: 300,
                  color: CustomColors.bgLight2, // A subtle background color
                  child: Icon(
                    Icons.person,
                    color: CustomColors.whitePrimary.withOpacity(0.5),
                    size: 150,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 50),
          // About Me Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "I'm a seasoned data scientist and Flutter developer with a passion for building intelligent and scalable solutions. My expertise lies in leveraging machine learning to solve real-world problems and creating clean, responsive applications that deliver an excellent user experience.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "I am dedicated to continuous learning and staying ahead of the curve in both data science and mobile development. Let's build something great together!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
