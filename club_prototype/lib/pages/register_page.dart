import 'package:club_prototype/util/services/auth_service.dart';
import 'package:flutter/material.dart';

import 'package:club_prototype/util/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    // show loading circle

    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    // try sign up

    if (passwordController.text != confirmPasswordController.text) {
      // show error message , password don't match
      Navigator.pop(context);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Passwords don't match")));
    } else {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);

        // pop the loading circle

        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        // pop the loading circle

        Navigator.pop(context);

        //show error message
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.code)));
      }
    }
  }

  void wrongEmailOrPassword() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Wrong Email or password"),
          );
        });
  }

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
                  "Let's create an account",
                  style: TextStyle(fontSize: 32, color: Colors.blueGrey),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // email

                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 201, 201, 201)),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: "Enter Email ",
                            labelText: "Email"),
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
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 201, 201, 201)),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: "Enter Password ",
                            labelText: "Password"),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      TextFormField(
                        obscureText: true,
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 201, 201, 201)),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: "Re-Enter Password ",
                            labelText: "ConfirmPassword"),
                      )
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
                  onPressed: () {
                    signUserUp();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(200, 50)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Padding(
                      padding: EdgeInsets.all(20.0),
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
                      child: GestureDetector(
                        onTap: (){
                          AuthService().signInWithGoogle(); 
                        },
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
                        const Icon(
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
                ),

                const SizedBox(
                  height: 50,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account "),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
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
