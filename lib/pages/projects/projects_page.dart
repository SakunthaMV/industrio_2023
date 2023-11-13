import 'package:flutter/material.dart';

import 'package:industrio_2023/pages/projects/project_card.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ProjectPage extends StatefulWidget {
  static const route = "Projects";
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      page: ProjectPage.route,
      content: ResponsiveGridList(
        horizontalGridSpacing: 20, // Horizontal space between grid items
        verticalGridSpacing: 20, // Vertical space between grid items
        horizontalGridMargin: 30, // Horizontal space around the grid
        verticalGridMargin: 50, // Vertical space around the grid
        minItemWidth: 350,
        minItemsPerRow: 1,
        maxItemsPerRow: 4,
        listViewBuilderOptions: ListViewBuilderOptions(
          shrinkWrap: true,
        ),
        children: [
          projectCard(context),
          projectCard(context),
          projectCard(context),
          projectCard(context),
          projectCard(context),
          projectCard(context),
          projectCard(context),
        ],
      ),
    );
  }
}
