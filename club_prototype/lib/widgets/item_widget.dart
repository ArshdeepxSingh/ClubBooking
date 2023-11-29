import 'package:club_prototype/models/club_tile.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
         trailing: TextButton( onPressed: (){}, child:  const Text("bookk")),
    
      ),
    );
  }
}
