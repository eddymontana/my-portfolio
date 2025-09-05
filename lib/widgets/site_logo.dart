// lib/widgets/site_logo.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;

  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Edidiong Aaron",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: CustomColors.yellowSecondary,
              ),
            ),
            TextSpan(
              text: "\nData Scientist | Flutter Developer",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: CustomColors.whitePrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
