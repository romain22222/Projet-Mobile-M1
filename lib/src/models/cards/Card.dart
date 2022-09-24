import '../../utils/IllustrationType.dart';

class Card {
  late String id;
  late String name;
  late IllustrationType image;
  Card(String cardName) {
    id = cardName;
    // ressource get
    name = cardName;
    // TODO : choisir le format des images de cartes
    image = IllustrationType("assets/images/$cardName.IMAGE_FORMAT");
  }
}
