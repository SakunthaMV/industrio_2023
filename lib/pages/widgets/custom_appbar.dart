import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/widgets/logo_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: ResponsiveLayout(
        mobile: mobileBar(context),
        tablet: tabletBar(context),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: List.generate(
                menuItems.length,
                (index) => TextButton(
                  onPressed: () {},
                  child: Text(
                    menuItems[index],
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ),
            ),
            const LogoButton(),
          ],
        ),
      ),
    );
  }

  Row tabletBar(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
          label: Text(
            'Menu',
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
              fontSize: 20,
            ),
          ),
        ),
        const LogoButton(),
      ],
    );
  }

  Widget mobileBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: const LogoButton(),
        ),
      ],
    );
  }
}
