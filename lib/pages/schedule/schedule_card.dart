import 'package:flutter/material.dart';

Widget scheduleCard() {
  return Container(
    width: 350,
    height: 250,
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.blue),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        timeCard(),
        const Text(
          "Keynote Speech",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "By",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          "Prof. Gamini Dissanayake",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Vice President of MEA",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}

Container timeCard() {
  return Container(
    height: 30,
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
    decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(Radius.circular(2))),
    child: const Row(
      children: [
        Icon(Icons.access_time, color: Colors.white),
        SizedBox(width: 5),
        Text(
          "9.00 a.m.",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
