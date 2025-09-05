// lib/sections/projects/projects_desktop.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/constants/projects_data.dart'; // NEW

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myProjects.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              final project = myProjects[index];
              return ProjectCard(
                projectTitle: project.name,
                projectDescription: project.description,
                imagePath: project.image,
                projectLink: project.link,
              );
            },
          ),
        ],
      ),
    );
  }
}
