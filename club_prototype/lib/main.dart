import 'package:club_prototype/pages/auth_page.dart';
import 'package:club_prototype/pages/homepage.dart';
import 'package:club_prototype/pages/night_out.dart';
import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)),
      themeMode: ThemeMode.system,
      routes: {
        "/": (context) => const AuthPage(),
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.nightoutRoute: (context) => const NightOut(),
      },
    );
  }
}
