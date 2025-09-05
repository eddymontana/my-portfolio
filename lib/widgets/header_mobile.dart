// lib/widgets/header_mobile.dart

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onMenuTap;

  const HeaderMobile({super.key, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.maxFinite,
      child: Row(
        children: [
          const SiteLogo(),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
        ],
      ),
    );
  }
}
