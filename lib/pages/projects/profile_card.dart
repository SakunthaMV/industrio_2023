import 'package:flutter/material.dart';

Widget profileItem() {
  return Container(
    child: Column(
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage("images/profile.png"),
        ),
        const SizedBox(height: 10),
        const Text("Mr. P.M.A.P. Kumara"),
        const SizedBox(height: 10),
        InkWell(
          child: const Icon(Icons.email, color: Colors.green),
          onTap: () {},
        ),
      ],
    ),
  );
}
