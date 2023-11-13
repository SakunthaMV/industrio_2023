import 'package:flutter/material.dart';
import 'package:industrio_2023/pages/projects/profile_card.dart';

class ProjectItem extends StatelessWidget {
  static const routeName = "project-item";
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Project Item",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const Divider(thickness: 2),
            const Text("Mr. D. Hirimuthugoda", style: TextStyle(fontSize: 17)),
            const SizedBox(height: 30),
            profileItem(),
            const SizedBox(height: 30),
            Container(
              height: 300,
              width: size.width * 0.8,
              decoration: const BoxDecoration(
                  color: Color(0xffE9DBE9),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
