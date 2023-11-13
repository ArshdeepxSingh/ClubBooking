import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [Text("this is your home page" , textScaleFactor: 4,),
        TextButton(onPressed: (){},child: Text('Go to second Page'))
        ]
      ),

    );
  }
}