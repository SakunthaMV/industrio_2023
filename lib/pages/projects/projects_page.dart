import 'package:flutter/material.dart';
import 'package:industrio_2023/pages/projects/project_card.dart';

class ProjectPage extends StatefulWidget {
  static const routeName = "project-page";
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            projectCard(),
          ],
        ),
      ),
    );
  }
}
