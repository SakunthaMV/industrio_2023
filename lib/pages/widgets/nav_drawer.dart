import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';

class NavDrawer extends StatelessWidget {
  final String? page;
  const NavDrawer({super.key, this.page});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              menuItems[index] == "/" ? "Home" : menuItems[index],
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                    color: (page ?? ModalRoute.of(context)?.settings.name) ==
                            menuItems[index]
                        ? colorScheme.tertiary
                        : colorScheme.primary,
                  ),
            ),
            hoverColor: Colors.grey[300],
            onTap: (page ?? ModalRoute.of(context)?.settings.name) !=
                    menuItems[index]
                ? () {
                    Navigator.pushReplacementNamed(context, menuItems[index]);
                  }
                : null,
          );
        },
      ),
    );
  }
}
