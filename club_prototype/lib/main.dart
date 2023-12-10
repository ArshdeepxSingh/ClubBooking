import 'package:club_prototype/pages/booking_page.dart';
import 'package:club_prototype/pages/login/auth_page.dart';
import 'package:club_prototype/pages/homepage.dart';
import 'package:club_prototype/pages/login/profile.dart';
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
        MyRoute.profileRoute: (context) => const ProfileScreen(),
        MyRoute.nightoutRoute: (context) => const NightOut(),
        MyRoute.bookingRoute: (context) => const BookingPage(),
      },
    );
  }
}

// booking page 


// members page 
  // verification section 


// profile page

  // friends 

  // 



// 
