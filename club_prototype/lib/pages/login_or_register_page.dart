import 'package:club_prototype/pages/login.dart';
import 'package:club_prototype/pages/register_page.dart';
import 'package:flutter/material.dart';


class LoginorRegisterPage extends StatefulWidget {
  const LoginorRegisterPage({super.key});

  @override
  State<LoginorRegisterPage> createState() => _LoginorRegisterPageState();
}

class _LoginorRegisterPageState extends State<LoginorRegisterPage> {


  // initially show login page 

  bool showLoginPage = true ; 


  // toggle between login and register page 

  void togglePage(){
    setState(() {
      
      showLoginPage = !showLoginPage;
    });

  }
  @override
  Widget build(BuildContext context) {
      if(showLoginPage){
        return LoginPage(onTap: togglePage);
      }else{
        return RegisterPage(
          onTap: togglePage,
        );
      }
  }
}