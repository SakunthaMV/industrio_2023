import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/people/hover_button.dart';
import 'package:industrio_2023/pages/people/organizing_commitee.dart';
import 'package:industrio_2023/pages/people/sub_headings.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';

class PeoplesPage extends StatelessWidget {
  static const String route = 'People';
  const PeoplesPage({super.key});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final double width = MediaQuery.of(context).size.width;
    return CommonPage(
      content: Column(
        children: [
          const SubHeadings('Our Speaker'),
          HoverButton(
            onTap: () {},
            body: SizedBox(
              width: width * 0.8 > 400.0 ? 400.0 : width * 0.8,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      width: 200,
                      height: 200,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                      image: NetworkImage(
                          'https://www.seekpng.com/png/full/110-1100707_person-avatar-placeholder.png'),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      'Prof. Gamini Dissanayake',
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'CEO of Abans Electricals PLC',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SubHeadings('Our People'),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: HoverButton(
              onTap: () {
                Navigator.pushNamed(context, OrganizingCommitee.route);
              },
              body: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: width * 0.1 >= 100.0 ? 100.0 : width * 0.1,
                    ),
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Organizing \nCommittee',
                          style: textTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.primary,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(width: 200, child: Image.asset(oc)),
                      ],
                    ),
                  ),
                  ResponsiveLayout(
                    desktop: commiteeDetails(context),
                    tablet: LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth < 700) {
                        return SizedBox(width: width * 0.1);
                      }
                      return commiteeDetails(context);
                    }),
                    mobile: SizedBox(width: width * 0.1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget commiteeDetails(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.1 >= 100.0 ? 100.0 : width * 0.1,
      ),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          ocDetails.length,
          (index) {
            return Text(
              ocDetails[index],
              style: textTheme.headlineSmall?.copyWith(
                color: colorScheme.secondary,
              ),
            );
          },
        ),
      ),
    );
  }
}
