import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:industrio_2023/pages/home/home_page.dart';
import 'package:industrio_2023/pages/people/people_page.dart';

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
          seedColor: Colors.grey,
          primary: Colors.black,
          tertiary: Colors.amber,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.lato(),
          titleMedium: GoogleFonts.openSans(),
        ),
      ),
      home: const HomePage(),
      routes: {
        PeoplesPage.route: (context) => const PeoplesPage(),
      },
    );
  }
}
