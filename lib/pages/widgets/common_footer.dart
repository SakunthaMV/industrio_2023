import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonFooter extends StatelessWidget {
  const CommonFooter({super.key});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      color: colorScheme.onBackground,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Have a Question?',
              style: textTheme.headlineLarge?.copyWith(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: List.generate(dmieDetails.length, (index) {
                return TextButton.icon(
                  label: SizedBox(
                    width: 270,
                    child: Text(
                      dmieDetails[index][0],
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onPrimary,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  icon: Icon(
                    dmieDetails[index][1],
                    size: 35,
                    color: colorScheme.secondary,
                  ),
                  onPressed: () async {
                    externalLink(dmieDetails[index][2]);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: colorScheme.onPrimary,
                  ),
                );
              }),
            ),
          ),
          Text(
            'Useful Links',
            style: textTheme.headlineLarge?.copyWith(
              color: colorScheme.onPrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 100,
              runSpacing: 20,
              children: List.generate(linkDetails.length, (index) {
                return SizedBox(
                  width: 100,
                  height: 100,
                  child: IconButton(
                    hoverColor: colorScheme.secondary.withOpacity(0.25),
                    icon: Image.asset(linkDetails[index][0]),
                    onPressed: () {
                      externalLink(linkDetails[index][1]);
                    },
                  ),
                );
              }),
            ),
          ),
          ...List.generate(2, (index) {
            const List<String> footerData = [
              'MEA | Department of Manufacturing & Industrial Engineering '
                  '| University of Peradeniya.',
              'Copyright ©2023 All rights reserved.'
            ];
            return Text(
              footerData[index],
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.tertiaryContainer,
              ),
              textAlign: TextAlign.center,
            );
          }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  void externalLink(url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      toast('Something Went Wrong. Please Try Again');
    }
  }
}
