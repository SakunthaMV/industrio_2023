import 'package:flutter/material.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/home/home_content.dart';
import 'package:industrio_2023/pages/home/slideshow.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/footer/common_footer.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(children: [
          SlideShow(),
          HomeContent(),
          CommonFooter(),
        ]),
      ),
      drawer: ResponsiveLayout(
        mobile: NavDrawer(),
        tablet: NavDrawer(),
      ),
    );
  }
}
