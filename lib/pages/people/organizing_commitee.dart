import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/people/sub_headings.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class OrganizingCommitee extends StatelessWidget {
  static const String route = 'Organizing Commitee';
  const OrganizingCommitee({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      page: PeoplesPage.route,
      content: Column(
        children: List.generate(
          ocDetails.length,
          (index) {
            return Column(
              children: [
                SubHeadings(ocDetails[index]),
                const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
