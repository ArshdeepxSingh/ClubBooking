// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:club_prototype/pages/homepage.dart';
import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            "login page",
            style: TextStyle(color: Colors.black, fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, MyRoute.homeRoute);
              },
              child: Text("Go to Home Page")),

          // logo

          // username

          // password

          //
        ],
      ),
    );
  }
}
