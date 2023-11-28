import 'package:club_prototype/util/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoute.nightoutRoute);
                  },
                  
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800]),
                  child: const Text("Night Out"),    
                      ),
              ElevatedButton(
                  onPressed: () {},
                  
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text("After Party"),    
                      ),
              ElevatedButton(
                  onPressed: () {},
                  
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[800]),
                  child: const Text("Special Events"),    
                      )
            ],
          ),
        ),
      ),
    );
  }
}
