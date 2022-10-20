import '../../../utils/IllustrationType.dart';
import '../ICard.dart';

class UnknownCard extends ICard {
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
