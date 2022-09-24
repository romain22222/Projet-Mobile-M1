import 'package:projet_mobile_m1/src/models/cards/ICard.dart';
import 'package:projet_mobile_m1/src/utils/IllustrationType.dart';

class UnknownCard implements ICard {
  @override
  String name = "unknown";

  @override
  IllustrationType image = IllustrationType("unknown");

  @override
  void effect() {
    // nothing
  }

  @override
  void passiveEffect() {
    // nothing
  }
}
