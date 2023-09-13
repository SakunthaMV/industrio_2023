import 'package:flutter/material.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/widgets/common_footer.dart';
import 'package:industrio_2023/pages/widgets/common_header.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class CommonPage extends StatelessWidget {
  final Widget content;
  final String? page;
  const CommonPage({
    super.key,
    required this.content,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(page: page),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonHeader(),
            content,
            const CommonFooter(),
          ],
        ),
      ),
      drawer: ResponsiveLayout(
        mobile: NavDrawer(page: page),
        tablet: NavDrawer(page: page),
      ),
    );
  }
}
