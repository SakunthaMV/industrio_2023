import 'package:flutter/material.dart';

Widget projectCard() {
  return Card(
    child: Container(
      height: 250,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("This Is The Project Title"),
          customButton(),
        ],
      ),
    ),
  );
}

Widget customButton() {
  return ElevatedButton(
    onPressed: () {},
    child: const Text("View Project"),
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 5.0,
    ),
  );
}
