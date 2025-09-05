// lib/sections/contact.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= dMedDesktopWidth) {
          return const ContactDesktop();
        } else {
          return const ContactMobile();
        }
      },
    );
  }
}

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      color: CustomColors.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 600,
            child: Text(
              "I'm always open to new opportunities and collaborations. Feel free to contact me through the form below or connect with me on social media.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.whiteSecondary,
              ),
            ),
          ),
          const SizedBox(height: 50),
          _buildContactForm(context, 600),
        ],
      ),
    );
  }
}

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: CustomColors.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Get In Touch',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "I'm always open to new opportunities and collaborations. Feel free to contact me through the form below or connect with me on social media.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: CustomColors.whiteSecondary),
          ),
          const SizedBox(height: 30),
          _buildContactForm(context, double.infinity),
        ],
      ),
    );
  }
}

Widget _buildContactForm(BuildContext context, double width) {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  return SizedBox(
    width: width,
    child: Column(
      children: [
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: "Your Name",
            hintStyle: TextStyle(color: CustomColors.hintColor),
            filled: true,
            fillColor: CustomColors.bgLight2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          style: const TextStyle(color: CustomColors.whitePrimary),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: "darklordyng@gmail.com",
            hintStyle: TextStyle(color: CustomColors.hintColor),
            filled: true,
            fillColor: CustomColors.bgLight2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          style: const TextStyle(color: CustomColors.whitePrimary),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: messageController,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Your Message",
            hintStyle: TextStyle(color: CustomColors.hintColor),
            filled: true,
            fillColor: CustomColors.bgLight2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          style: const TextStyle(color: CustomColors.whitePrimary),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            final Uri emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'darklordyng@gmail.com', // <-- Replace with your email
              queryParameters: {
                'subject': 'Portfolio Inquiry',
                'body':
                    'Name: ${nameController.text}\nEmail: ${emailController.text}\n\nMessage: ${messageController.text}',
              },
            );
            if (!await launchUrl(emailLaunchUri)) {
              // Handle error if email client cannot be opened
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Could not open email client.')),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.yellowPrimary,
            foregroundColor: CustomColors.whitePrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          ),
          child: const Text('Send Message'),
        ),
      ],
    ),
  );
}
