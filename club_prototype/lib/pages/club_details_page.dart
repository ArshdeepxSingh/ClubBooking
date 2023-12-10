import 'package:club_prototype/util/routes.dart';
import 'package:club_prototype/widgets/models/club_tile.dart';
import 'package:flutter/material.dart';

class ClubDetailsPage extends StatefulWidget {
  final Item clubModel;

   const ClubDetailsPage({super.key, required this.clubModel})
      : assert(clubModel != null);

  @override
  State<ClubDetailsPage> createState() => _ClubDetailsPageState();
}

class _ClubDetailsPageState extends State<ClubDetailsPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
          
      
          Image.network(widget.clubModel.image),
      
          const SizedBox(height: 20),
          Text(widget.clubModel.name, style: TextStyle(fontSize: 40)),
          const SizedBox(height: 20),
          Text(
            widget.clubModel.description,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
      
          const Text("Location here can be a link "),
      
          Container(
            child:  TabBar(
              controller: tabController,
              tabs: [
              Tab(child: Text("Photos" , style: TextStyle(color: Colors.black)) ),
              Tab(child: Text("Menu", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Drinks", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Reviews", style: TextStyle(color: Colors.black))),
      
            ]),
          ),
      
          Container(
            width: double.maxFinite,
            height: 250,
      
            child: TabBarView(
              controller: tabController,
              children: [
                Center(child: Text("Photos here")),
                Center(child: Text("Menu here")),
                Center(child: Text("Drinks here")),
                Center(child: Text("Reviwes here")),
      
            ]),
          ),
      
      
      
      
      
          
      
      
      
      
          ElevatedButton(
              onPressed: () {
                // checks for login
      
                // aadhar card
      
                Navigator.pushNamed(context, MyRoute.bookingRoute);
              },
              child: Text("Book now")),
           
        ]),
      ),
    );
  }
}
