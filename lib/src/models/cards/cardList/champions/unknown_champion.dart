import '../../../../utils/IllustrationType.dart';
import '../../IChampion.dart';

class UnknownChampion extends IChampion {
  @override
  String name = "unknown";

  @override
  IllustrationType image = IllustrationType("unknown.png");

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
