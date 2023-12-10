import 'dart:convert';

import 'package:club_prototype/pages/club_details_page.dart';
import 'package:club_prototype/widgets/models/club_tile.dart';
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
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var clubJson = await rootBundle.loadString("assets/dummy_data/club.json");
    var decodedData = jsonDecode(clubJson);
    var clubData = decodedData["clubs"];
    ClubModel.clubs =
        List.from(clubData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: (ClubModel.clubs.isNotEmpty) ? 
      ListView.builder(
        itemCount: ClubModel.clubs.length,
        
        itemBuilder: (context , index){
          final clubModel = ClubModel.clubs[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 4.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide( color: Colors.grey.shade300 , width: 1.0
                )
              ),

              child: InkWell(
                onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ClubDetailsPage(clubModel: clubModel)));
                    },
                child: ItemWidget(
                        item: ClubModel.clubs[index],
                      ),
              ),
            ),

            
          );
          
        }) 
      
      
      
      
      : const Center( child: CircularProgressIndicator(),));
      
    
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: (ClubModel.clubs.isNotEmpty)
    //         ? ListView.builder(
    //             itemCount: ClubModel.clubs.length,
    //             itemBuilder: (context, index) {
    //               final clubModel = ClubModel.clubs[index];
    //               return InkWell(
    //                 onTap: (){
    //                   Navigator.push(context, MaterialPageRoute(builder: (context) => ClubDetailsPage(clubModel: clubModel)));
    //                 },
    //                 child: ItemWidget(
    //                   item: ClubModel.clubs[index],
    //                 ),
    //               );
    //             })
    //         : const Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //   ),
    // );
  }
}
