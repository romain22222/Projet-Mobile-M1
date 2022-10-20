import '../../../../utils/IllustrationType.dart';
import '../../IInvocation.dart';

class UnknownInvocation extends IInvocation {
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
