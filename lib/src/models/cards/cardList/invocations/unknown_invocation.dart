import '../../../../utils/IllustrationType.dart';
import '../../IInvocation.dart';

class UnknownInvocation implements IInvocation {
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
