import 'package:projet_mobile_m1/src/models/cards/IChampion.dart';
import 'package:projet_mobile_m1/src/utils/IllustrationType.dart';

class UnknownChampion implements IChampion {
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

  @override
  int life = -1;
}
