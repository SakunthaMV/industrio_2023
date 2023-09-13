import 'package:flutter/material.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/widgets/common_header.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/common_footer.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class PeoplesPage extends StatelessWidget {
  static const String route = 'People';
  const PeoplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonHeader(),
            CommonFooter(),
          ],
        ),
      ),
      drawer: ResponsiveLayout(
        mobile: NavDrawer(),
        tablet: NavDrawer(),
      ),
    );
  }
}
