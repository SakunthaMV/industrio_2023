import 'package:flutter/material.dart';
import 'package:industrio_2023/pages/projects/project_item_page.dart';

Widget projectCard(BuildContext context) {
  return Container(
    height: 300,
    width: 300,
    child: Card(
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "This Is The Project Title",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            customButton(context),
          ],
        ),
      ),
    ),
  );
}

Widget customButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushNamed(ProjectItem.routeName);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff29467C),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      elevation: 5.0,
    ),
    child: const Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      child: Text("View Project"),
    ),
  );
}
