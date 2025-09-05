// lib/sections/main/main_desktop.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            // Strong Headline
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "I build powerful solutions with ",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.whitePrimary,
                    ),
                  ),
                  TextSpan(
                    text: "data & code.",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.yellowSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Subheading
            const Text(
              "Experienced in Data Science, Machine Learning, and Flutter Development.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: CustomColors.whitePrimary),
            ),
            const SizedBox(height: 40),
            // Call to action button
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Add a smooth scroll to the contact section
                },
                child: const Text("Get in Touch"),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
