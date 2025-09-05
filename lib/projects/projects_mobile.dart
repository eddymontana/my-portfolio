// lib/sections/projects/projects_mobile.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/constants/projects_data.dart'; // NEW

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'My Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myProjects.length,
            itemBuilder: (context, index) {
              final project = myProjects[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ProjectCard(
                  projectTitle: project.name,
                  projectDescription: project.description,
                  imagePath: project.image,
                  projectLink: project.link,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
