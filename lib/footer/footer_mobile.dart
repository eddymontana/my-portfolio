import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      color: CustomColors.bgLight1,
      child: Column(
        children: [
          const Text(
            'Connect With Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: CustomColors.whiteSecondary,
                ),
                onPressed: () => launchUrl(
                  Uri.parse('https://linkedin.com/in/edidiong-aaron-533459115'),
                ), // Replace with your LinkedIn URL
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: CustomColors.whiteSecondary,
                ),
                onPressed: () => launchUrl(
                  Uri.parse('https://github.com/eddymontana'),
                ), // Replace with your GitHub URL
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: CustomColors.whiteSecondary,
                ),
                onPressed: () => launchUrl(
                  Uri.parse('https://twitter.com/@ammaddeuss'),
                ), // Replace with your Twitter URL
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: CustomColors.whiteSecondary),
          const SizedBox(height: 10),
          const Text(
            '© 2025 Your Name. All Rights Reserved.', // Replace with your name
            style: TextStyle(fontSize: 12, color: CustomColors.whiteSecondary),
          ),
        ],
      ),
    );
  }
}
