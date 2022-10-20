import '../../../../utils/IllustrationType.dart';
import '../../IChampion.dart';

class VoleurChampion extends IChampion {
  @override
  String name = "Voleur";

  @override
  IllustrationType image = IllustrationType("voleur");

  @override
  void effect() {
    // nothing
  }

  @override
  void passiveEffect() {
    // nothing
  }

  @override
  int life = 20;
}
