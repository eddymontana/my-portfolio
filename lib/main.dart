// A professional portfolio website built with Flutter.
// This is a single, self-contained file suitable for your project catalog.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/projects_data.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    // We use a MaterialApp to provide basic app structure.
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ensures no debug banner appears.
      title: 'Professional Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({Key? key}) : super(key: key);

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  // GlobalKeys to identify each section for scrolling
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _expertiseKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // Determine the screen width for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 800;

    // Using a Scaffold gives us a basic layout structure.
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Ivory background
      drawer: isDesktop ? null : _buildDrawer(), // Show drawer only on mobile
      body: Stack(
        children: [
          // Main content with a single scroll view
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // --- Header Section ---
                Container(
                  padding: const EdgeInsets.all(40.0),
                  color: Colors.blueGrey[800],
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/aboutme-image.jpg',
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Edidiong Aaron', // Replace with your name
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Data Scientist | AI/ML Engineer | Prompt Engineer | Flutter Developer', // Customize your professional titles
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),

                // --- About Me Section ---
                RepaintBoundary(
                  key: _aboutKey,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildSectionTitle('About Me'),
                        const SizedBox(height: 10),
                        const Text(
                          'I am a passionate data scientist and AI/ML engineer with a deep understanding of machine learning models and data analysis techniques. My experience as a Flutter developer and prompt engineer allows me to build creative solutions and interactive applications. I am committed to leveraging technology to solve complex problems and deliver professional, high-quality results.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10.0),

                // --- Skills Section ---
                RepaintBoundary(
                  key: _expertiseKey,
                  child: Container(
                    color: Colors.grey[50], // Light grey background
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle('My Expertise'),
                        const SizedBox(height: 6.0),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 9, // Number of skills to display
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                // Responsive grid for skills
                                crossAxisCount: isDesktop ? 3 : 1,
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                                childAspectRatio: isDesktop ? 0.6 : 0.8,
                              ),
                          itemBuilder: (context, index) {
                            switch (index) {
                              case 0:
                                return _buildSkillCard(
                                  svgPath: 'assets/flutter-svgrepo-com.svg',
                                  title: 'Flutter',
                                  description:
                                      'Building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                                  color: Colors.blue,
                                );
                              case 1:
                                return _buildSkillCard(
                                  svgPath: 'assets/python-svgrepo-com.svg',
                                  title: 'Python',
                                  description:
                                      'Proficient in Python for data analysis, machine learning, and automation scripting.',
                                  color:
                                      Colors.amber[700] ??
                                      Colors.amber, // follow back color
                                );
                              case 2:
                                return _buildSkillCard(
                                  svgPath:
                                      'assets/machine-learning-01-svggrepo-com.svg',
                                  title: 'Machine Learning',
                                  description:
                                      'Designing and implementing machine learning models to solve complex problems.',
                                  color: Colors.green,
                                );
                              case 3:
                                return _buildSkillCard(
                                  svgPath: 'assets/tensorflow-svgrepo-com.svg',
                                  title: 'TensorFlow',
                                  description:
                                      'Expertise in building and deploying deep learning models using the TensorFlow framework.',
                                  color: Colors.orange,
                                );
                              case 4:
                                return _buildSkillCard(
                                  svgPath: 'assets/kaggle-svgrepo-com.svg',
                                  title: 'Kaggle',
                                  description:
                                      'Active participant and learner on Kaggle, staying up-to-date with data science techniques.',
                                  color:
                                      Colors.blue[800] ??
                                      Colors.blue, // follow back color
                                );
                              case 5:
                                return _buildSkillCard(
                                  svgPath:
                                      'assets/hugging-face-svgrepo-com.svg',
                                  title: 'Hugging Face',
                                  description:
                                      'Using Hugging Face libraries for NLP and transformer-based models.',
                                  color:
                                      Colors.yellow[800] ??
                                      Colors.yellow, // follow back color
                                );
                              case 6:
                                return _buildSkillCard(
                                  svgPath:
                                      'assets/google-cloud-svgrepo-com.svg',
                                  title: 'Google Cloud',
                                  description:
                                      'Experience with Google Cloud Platform for cloud computing and data solutions.',
                                  color: Colors.blue,
                                );
                              case 7:
                                return _buildSkillCard(
                                  svgPath: 'assets/firebase-svgrepo-com.svg',
                                  title: 'Firebase',
                                  description:
                                      'Utilizing Firebase for real-time databases, authentication, and cloud functions.',
                                  color: Colors.amber,
                                );
                              case 8:
                                return _buildSkillCard(
                                  svgPath: 'assets/anaconda-svgrepo-com.svg',
                                  title: 'Anaconda',
                                  description:
                                      'Managing environments and packages for data science projects with Anaconda.',
                                  color: Colors.green,
                                );
                              default:
                                return Container();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 6.0),

                // --- Projects Section ---
                RepaintBoundary(
                  key: _projectsKey,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle('Project Showcase'),
                        const SizedBox(height: 6.0),
                        // Conditional layout for desktop vs. mobile
                        isDesktop
                            ? _buildProjectsDesktop()
                            : _buildProjectsMobile(),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),

                // --- Footer ---
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: Colors.blueGrey[900],
                ),
              ],
            ),
          ),

          // Top Right Navigation (only for desktop)
          if (isDesktop)
            Positioned(
              top: 15,
              right: 15,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildNavLink('About Me', () => _scrollToSection(_aboutKey)),
                  const SizedBox(width: 8.0),
                  _buildNavLink(
                    'Expertise',
                    () => _scrollToSection(_expertiseKey),
                  ),
                  const SizedBox(width: 8.0),
                  _buildNavLink(
                    'Projects',
                    () => _scrollToSection(_projectsKey),
                  ),
                ],
              ),
            ),
          // Hamburger menu for mobile
          if (!isDesktop)
            Positioned(
              top: 15,
              right: 15,
              child: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }

  // A new drawer for mobile navigation
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey[800]),
            child: const Text(
              'Navigation',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text('About Me'),
            onTap: () {
              Navigator.pop(context); // close the drawer
              _scrollToSection(_aboutKey);
            },
          ),
          ListTile(
            title: const Text('Expertise'),
            onTap: () {
              Navigator.pop(context);
              _scrollToSection(_expertiseKey);
            },
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () {
              Navigator.pop(context);
              _scrollToSection(_projectsKey);
            },
          ),
        ],
      ),
    );
  }

  // Helper widget for navigation links with hover animation.
  Widget _buildNavLink(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((
          Set<MaterialState> states,
        ) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.blue.shade300; // Color on hover
          }
          return Colors.white; // Default color
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>((
          Set<MaterialState> states,
        ) {
          if (states.contains(MaterialState.hovered)) {
            return const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            );
          }
          return const TextStyle();
        }),
      ),
      child: Text(title),
    );
  }

  // Helper function to scroll to a specific section.
  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(
          milliseconds: 800,
        ), // Increased duration for a smoother feel
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    }
  }

  // Helper widget to create a consistent section title style.
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey[900],
      ),
    );
  }

  // Helper widget to create a new professional-looking skill card.
  Widget _buildSkillCard({
    required String svgPath,
    required String title,
    required String description,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              child: SvgPicture.asset(svgPath, height: 20, width: 20),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 3),
            Text(
              description,
              style: const TextStyle(fontSize: 12, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // NEW: Refactored projects section for desktop
  Widget _buildProjectsDesktop() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myProjects.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns for desktop
        crossAxisSpacing: 14.0,
        mainAxisSpacing: 14.0,
        childAspectRatio: 0.6, // Taller and more compact cards
      ),
      itemBuilder: (context, index) {
        final project = myProjects[index];
        return ProjectCard(
          projectTitle: project.name,
          projectDescription: project.description,
          imagePath: project.image,
          projectLink: project.link,
          technologies: project.technologies,
        );
      },
    );
  }

  // NEW: Refactored projects section for mobile
  Widget _buildProjectsMobile() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myProjects.length,
      itemBuilder: (context, index) {
        final project = myProjects[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: ProjectCard(
            projectTitle: project.name,
            projectDescription: project.description,
            imagePath: project.image,
            projectLink: project.link,
            technologies: project.technologies,
          ),
        );
      },
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String projectTitle;
  final String projectDescription;
  final String imagePath;
  final String projectLink;
  final String? technologies;

  const ProjectCard({
    Key? key,
    required this.projectTitle,
    required this.projectDescription,
    required this.imagePath,
    required this.projectLink,
    this.technologies,
  }) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      child: AnimatedScale(
        scale: _isHovering ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Card(
          elevation: _isHovering ? 10 : 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.projectTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[800],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      widget.projectDescription,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    if (widget.technologies != null)
                      Wrap(
                        spacing: 4.0,
                        runSpacing: 2.0,
                        children: widget.technologies!.split(', ').map((tech) {
                          return Chip(
                            label: Text(
                              tech,
                              style: const TextStyle(fontSize: 10),
                            ),
                            backgroundColor: Colors.blueGrey[50],
                          );
                        }).toList(),
                      ),
                    const SizedBox(height: 8.0),
                    OutlinedButton.icon(
                      onPressed: () => _launchURL(widget.projectLink),
                      icon: const Icon(Icons.code, size: 14),
                      label: const Text('View on GitHub'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blueGrey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $url');
    }
  }
}
