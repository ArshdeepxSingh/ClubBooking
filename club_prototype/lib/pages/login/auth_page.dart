
import 'package:club_prototype/pages/login/aadhar_verification.dart';
import 'package:club_prototype/pages/login/login_or_register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {

        // user is logged in 
        if (snapshot.hasData && snapshot.data != null){
          return const AadharVerification();

        // user is not logged in 
         
        }
        else{
          return const LoginorRegisterPage();
        }
      }
        
        
        ),
    );
  }
}