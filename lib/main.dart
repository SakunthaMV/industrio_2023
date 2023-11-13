import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:industrio_2023/pages/home/home_page.dart';

import 'pages/projects/projects_page.dart';

import 'package:industrio_2023/pages/people/organizing_commitee.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/posters/posters_page.dart';
import 'package:industrio_2023/pages/proceeding/proceeding_page.dart';
import 'package:industrio_2023/pages/schedule/schedule_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA50MvN9UizyjpNzhXsSBuV__-ANQ_EIrY",
      projectId: "industrio-2023",
      messagingSenderId: "719376501367",
      appId: "1:719376501367:web:019ed3f28250c51cdcd472",
      storageBucket: "industrio-2023.appspot.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDUSTRIO 2023',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffCA9DB7),
          primary: Colors.black,
          background: Colors.white,
          onSecondary: const Color(0xffECC3A5),
          tertiary: const Color(0xffE9DBE7),
          secondaryContainer: const Color(0xffCA9DB7),
          primaryContainer: const Color(0xff6B71B8),
          secondary: const Color(0xff29467C),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(),
          displaySmall: GoogleFonts.workSans(),
          headlineLarge: GoogleFonts.notoSans(),
          titleLarge: GoogleFonts.ptSans(),
          titleMedium: GoogleFonts.openSans(),
        ),
      ),
      home: const HomePage(),
      routes: {
        SchedulePage.route: (context) => const SchedulePage(),
        PeoplesPage.route: (context) => const PeoplesPage(),
        ProjectPage.route: (context) => const ProjectPage(),
        PostersPage.route: (context) => const PostersPage(),
        ProceedingPage.route: (context) => const ProceedingPage(),
        OrganizingCommitee.route: (context) => const OrganizingCommitee(),
      },
    );
  }
}
