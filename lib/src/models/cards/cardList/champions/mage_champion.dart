import '../../../../utils/IllustrationType.dart';
import '../../IChampion.dart';

class MageChampion implements IChampion {
  @override
  String name = "Mage";

  @override
  IllustrationType image = IllustrationType("mage");

  @override
  void effect() {
    // nothing
  }

  @override
  void passiveEffect() {
    // nothing
  }

  @override
  int life = 15;
}
