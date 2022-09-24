import '../../../utils/IllustrationType.dart';
import '../ICard.dart';

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
