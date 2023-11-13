import 'package:flutter/material.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/home/home_content.dart';
import 'package:industrio_2023/pages/home/slideshow.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/common_footer.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: const CustomAppbar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SlideShow(),
            HomeContent(),
            HomeContent(),
            CommonFooter(),
          ],
        ),
      ),
      drawer: const ResponsiveLayout(
        mobile: NavDrawer(),
        tablet: NavDrawer(),
      ),
    );
  }
}
