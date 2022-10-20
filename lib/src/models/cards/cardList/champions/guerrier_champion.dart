import '../../../../utils/IllustrationType.dart';
import '../../IChampion.dart';

class GuerrierChampion extends IChampion {
  @override
  String name = "Guerrier";

  @override
  IllustrationType image = IllustrationType("guerrier");

  @override
  void effect() {
    // nothing
  }

  @override
  void passiveEffect() {
    // nothing
  }

  @override
  int life = 25;
}
