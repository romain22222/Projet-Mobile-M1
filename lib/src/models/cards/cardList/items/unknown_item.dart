import '../../../../utils/IllustrationType.dart';
import '../../IItem.dart';

class UnknownItem implements IItem {
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
