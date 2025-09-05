// lib/styles/style.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

// ignore: non_constant_identifier_names
BoxDecoration KHederDecoration = BoxDecoration(
  // Image as the background
  image: const DecorationImage(
    image: AssetImage('assets/header-image.jpg'),
    fit: BoxFit.cover,
  ),
  // Existing gradient and rounded corners on top of the image
  gradient: LinearGradient(colors: [Colors.transparent, CustomColors.bgLight1]),
  borderRadius: BorderRadius.circular(100),
);
