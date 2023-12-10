

import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';




class AadharVerification extends StatelessWidget {
  const AadharVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("aadhar verification page"),
            TextField(),
            SizedBox(height: 20,),
            TextButton(onPressed: (){}, child: Text("verify" , style: TextStyle(color: Colors.white),), style:ElevatedButton.styleFrom(backgroundColor: Colors.black , )),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, MyRoute.homeRoute);
            }, child: Text("skip for now")),

            ]
        ),
      )
    );
  }
}
