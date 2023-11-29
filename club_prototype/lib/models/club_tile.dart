class ClubModel{
  static List<Item> clubs = [
  ]; 








}



class Item {
  final num clubId;
  final String name;
  final String location;
  final String description;
  final String image;
  final bool nightOut;
  final bool afterParty;
  final bool specialParty;

  Item(
      {required this.clubId,
      required this.name,
      required this.location,
      required this.description,
      required this.image,
      required this.nightOut,
      required this.afterParty,
      required this.specialParty});


  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      clubId : map['club_id'],
      name : map['name'],
      location : map['location'],
      description : map['description'],
      image : map['image'],
      nightOut : map['night_out'] == 'true',
      afterParty : map['after_party'] == 'true',
      specialParty : map['special_party'] == 'true'

    );

  }

  toMap()=>{
    "club_id" : clubId,
    "name": name,
    "decription" : description,
    "location" : location,
    "image" : image,
    "night_out" : nightOut ? true: false ,
    "after_party" : afterParty? true :false,
    "special_party" : specialParty? true : false

    
  };

  

}
