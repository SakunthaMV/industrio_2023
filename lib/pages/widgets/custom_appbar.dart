import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/widgets/logo_button.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0.0,
      toolbarHeight: appBarHeight,
      leading: const SizedBox(),
      elevation: 4.0,
      title: SizedBox(
        height: 70.0,
        child: ResponsiveLayout(
          mobile: mobileBar(context),
          tablet: tabletBar(context),
          desktop: desktopBar(context),
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
        const SizedBox(
          width: 100,
        ),
        const LogoButton(),
      ],
    );
  }

  Row mobileBar(BuildContext context) {
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

  Row desktopBar(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: List.generate(
            menuItems.length,
            (index) => TextButton(
              onPressed: ModalRoute.of(context)?.settings.name !=
                      menuItems[index]
                  ? () {
                      Navigator.pushReplacementNamed(context, menuItems[index]);
                    }
                  : null,
              child: Text(
                menuItems[index] == "/" ? "Home" : menuItems[index],
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  color:
                      ModalRoute.of(context)?.settings.name == menuItems[index]
                          ? colorScheme.tertiary
                          : colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
        const LogoButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}
