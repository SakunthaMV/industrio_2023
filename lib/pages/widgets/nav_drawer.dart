import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              menuItems[index],
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
            ),
            hoverColor: Colors.grey[300],
            onTap: () {},
          );
        },
      ),
    );
  }
}
