import 'package:flutter/material.dart';
import 'package:my_portfolio/about/about_desktop.dart';
import 'package:my_portfolio/about/about_mobile.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/contact.dart';
import 'package:my_portfolio/footer/footer_desktop.dart';
import 'package:my_portfolio/footer/footer_mobile.dart';
import 'package:my_portfolio/projects/projects_desktop.dart';
import 'package:my_portfolio/projects/projects_mobile.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final mainSectionKey = GlobalKey();
  final aboutSectionKey = GlobalKey();
  final skillsSectionKey = GlobalKey();
  final projectsSectionKey = GlobalKey();
  final contactSectionKey = GlobalKey();
  final footerSectionKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.scaffoldBg,
          endDrawer: constraints.maxWidth >= dMinDesktopWidth
              ? null
              : DrawerMobile(
                  onMainTap: () => scrollToSection(mainSectionKey),
                  onAboutTap: () => scrollToSection(aboutSectionKey),
                  onSkillsTap: () => scrollToSection(skillsSectionKey),
                  onProjectsTap: () => scrollToSection(projectsSectionKey),
                  onContactTap: () => scrollToSection(contactSectionKey),
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                // Header
                if (constraints.maxWidth >= dMinDesktopWidth)
                  HeaderDesktop(
                    onMainTap: () => scrollToSection(mainSectionKey),
                    onAboutTap: () => scrollToSection(aboutSectionKey),
                    onSkillsTap: () => scrollToSection(skillsSectionKey),
                    onProjectsTap: () => scrollToSection(projectsSectionKey),
                    onContactTap: () => scrollToSection(contactSectionKey),
                  )
                else
                  HeaderMobile(
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                // Main/Hero Section
                if (constraints.maxWidth >= dMedDesktopWidth)
                  MainDesktop(key: mainSectionKey)
                else
                  MainMobile(key: mainSectionKey),

                // About Me section
                if (constraints.maxWidth >= dMedDesktopWidth)
                  AboutDesktop(key: aboutSectionKey)
                else
                  AboutMobile(key: aboutSectionKey),

                // Skills Section
                if (constraints.maxWidth >= dMedDesktopWidth)
                  SkillsDesktop(key: skillsSectionKey)
                else
                  SkillsMobile(key: skillsSectionKey),

                // Projects Section
                if (constraints.maxWidth >= dMedDesktopWidth)
                  ProjectsDesktop(key: projectsSectionKey)
                else
                  ProjectsMobile(key: projectsSectionKey),

                // Contact Section
                ContactSection(key: contactSectionKey),

                // Footer
                if (constraints.maxWidth >= dMedDesktopWidth)
                  FooterDesktop(key: footerSectionKey)
                else
                  FooterMobile(key: footerSectionKey),
              ],
            ),
          ),
        );
      },
    );
  }
}
