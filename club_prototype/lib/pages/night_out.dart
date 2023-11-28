import 'dart:convert';

import 'package:club_prototype/models/club_tile.dart';
import 'package:club_prototype/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NightOut extends StatefulWidget {
  const NightOut({super.key});

  @override
  State<NightOut> createState() => _NightOutState();
}

class _NightOutState extends State<NightOut> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async {
    var clubJson =  await rootBundle.loadString("assets/dummy_data/club.json");
    var decodedData = jsonDecode(clubJson);
    var clubData = decodedData["clubs"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Club"),

      ),
      body: ListView.builder(
        itemCount: ClubModel.clubs.length,
        
        itemBuilder: (context,index){
          return ItemWidget(item: ClubModel.clubs[index],);
        }
         ),
    );
  }
  
  
}

