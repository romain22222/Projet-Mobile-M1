import '../../../../utils/IllustrationType.dart';
import '../../IItem.dart';

class Banana extends IItem {
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
