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
      appBar: AppBar(
        title: const Text("Club"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (ClubModel.clubs != null && ClubModel.clubs.isNotEmpty)
            ? ListView.builder(
                itemCount: ClubModel.clubs.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: ClubModel.clubs[index],
                  );
                })
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
