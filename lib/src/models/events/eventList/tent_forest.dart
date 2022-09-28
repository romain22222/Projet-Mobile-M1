import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class TentForest implements IEvent {
  @override
  String description =
      "Durant un passage dans la forêt d'à côté, vous tombez sur une tente au pied d'un grand sapin.";
  @override
  EventOutput outputs =
      EventOutput(GoInForest(), InTent(), GoInForest(), Backwards());

  @override
  IllustrationType background =
      IllustrationType("backgrounds/background_00.png");

  @override
  IllustrationType foreground = IllustrationType("events/tent_forest.png");

  @override
  RequirementsType requirements = RequirementsType();
}

class Backwards implements IOutputType {
  @override
  String description = "Revenir sur vos pas";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  void result() {
    // TODO: implement result
  }
}

class GoInForest implements IOutputType {
  @override
  String description = "Continuer dans la forêt";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  void result() {
    // TODO: implement result
  }
}

class InTent implements IOutputType {
  @override
  String description = "Entrer dans la tente";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }
}
