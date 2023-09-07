import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:industrio_2023/pages/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA50MvN9UizyjpNzhXsSBuV__-ANQ_EIrY",
      projectId: "industrio-2023",
      messagingSenderId: "719376501367",
      appId: "1:719376501367:web:019ed3f28250c51cdcd472",
    ),
  );
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
