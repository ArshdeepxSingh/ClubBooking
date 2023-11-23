import 'package:club_prototype/pages/homepage.dart';
import 'package:club_prototype/pages/login.dart';
import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
