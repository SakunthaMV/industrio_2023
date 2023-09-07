import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:industrio_2023/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDUSTRIO 2023',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        textTheme: TextTheme(
          titleMedium: GoogleFonts.openSans(),
        ),
      ),
      home: const HomePage(),
    );
  }
}
