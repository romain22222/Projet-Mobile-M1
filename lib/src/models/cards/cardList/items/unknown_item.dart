import '../../../../utils/IllustrationType.dart';
import '../../IItem.dart';

class UnknownItem extends IItem {
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
}
