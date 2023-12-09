import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
      
         children: <Widget>[
      
          DrawerHeader(
            
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.black),
              accountName: const Text("Dashboard" , textScaleFactor: 2,),
              accountEmail: Text('${FirebaseAuth.instance.currentUser?.email}'),),
          ),
      
           ListTile(
            onTap: () => signUserOut(),
      
            leading: const Icon(Icons.logout , color: Colors.white,),
            title: const Text("Logout" , style: TextStyle(color: Colors.white),),
          )
         ],
         
         ),
      ),
      
    );
  }
}