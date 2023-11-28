class ClubModel{
  static final clubs = [
    Item(
      clubId: 1, 
      name: "Club XYZ", 
      location: "City A", 
      description:"Club XYZ is a lively and energetic club located in the heart of City A. It offers a wide range of music genres and hosts themed parties every weekend.",
      image: "https://images.pexels.com/photos/2747446/pexels-photo-2747446.jpeg?auto=compress&cs=tinysrgb&w=600", 
      nightOut: true,
      afterParty: false, 
      specialParty: true)

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
}
