import 'package:projet_mobile_m1/src/models/cards/IItem.dart';
import 'package:projet_mobile_m1/src/utils/IllustrationType.dart';

class Banana implements IItem {
  @override
  String name = "Banana";

  @override
  IllustrationType image = IllustrationType("banana");

  @override
  void effect() {
    // nothing
  }

  @override
  void passiveEffect() {
    // nothing
  }
}
