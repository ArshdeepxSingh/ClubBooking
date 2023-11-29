// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                // logo

                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 20,
                ),

                // welcome

                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 32, color: Colors.blueGrey),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // username

                      TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 201, 201, 201)),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: "Enter Username ",
                            labelText: "Username"),
                      ),

                      // password

                      const SizedBox(
                        height: 15,
                      ),

                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 201, 201, 201)),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: "Enter Password ",
                            labelText: "Password"),
                      ),
                    ],
                  ),
                ),

                //forgot password

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot password?"),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // sign in

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, fixedSize: Size(200, 50)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Or continue as"),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                  ],
                ),

                // guest

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 224, 223, 223)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            "assets/images/google_logo.png",
                            height: 70,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 224, 223, 223)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            "assets/images/apple_logo.png",
                            height: 70,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      },
                      splashFactory: InkRipple.splashFactory,
                      child: Column(children: [
                        Icon(
                          Icons.account_circle,
                          size: 70,
                        ),
                        Text('Guest',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                  ],
                )

                // or continue with google or apple id
              ],
            ),
          ),
        ),
      ),
    );
  }
}
