import '../../../../utils/IllustrationType.dart';
import '../../IChampion.dart';

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
