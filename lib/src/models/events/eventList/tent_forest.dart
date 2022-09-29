import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class TentForest extends IEvent {
  @override
  String description =
      "Durant un passage dans la forêt d'à côté, vous tombez sur une tente au pied d'un grand sapin.";
  @override
  EventOutput outs =
      EventOutput(InTent(), Backwards(), GoInForestLeft(), GoInForestRight());

  @override
  IllustrationType background =
      IllustrationType("backgrounds/background_00.png");

  @override
  IllustrationType foreground = IllustrationType("events/tent_forest.png");

  @override
  RequirementsType requirements = RequirementsType();

  @override
  String zone = "Forêt";
}

class Backwards extends IOutputType {
  @override
  String description = "Revenir sur vos pas";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  void result() {
    // TODO: implement result
  }

  @override
  Direction direction = Direction.down;
}

abstract class GoInForest extends IOutputType {
  @override
  String description = "Continuer dans la forêt";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  void result() {
    // TODO: implement result
  }
}

class GoInForestLeft extends GoInForest {
  @override
  Direction direction = Direction.left;
}

class GoInForestRight extends GoInForest {
  @override
  Direction direction = Direction.right;
}

class InTent extends IOutputType {
  @override
  String description = "Entrer dans la tente";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }

  @override
  Direction direction = Direction.up;
}
