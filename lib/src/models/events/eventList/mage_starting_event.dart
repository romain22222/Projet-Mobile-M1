import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class MageStartingEvent implements IEvent {
  @override
  String description =
      "Vous venez de vous réveiller dans un temple, et observez les alentours...";
  @override
  EventOutput outputEvents =
      EventOutput(GoToTown(), ExploreTemple(), GoLeft(), GoRight());

  @override
  IllustrationType background = IllustrationType("unknown");

  @override
  IllustrationType foreground = IllustrationType("events/mage/mage_00.png");

  @override
  RequirementsType requirements = RequirementsType();

  @override
  String zone = "Temple";
}

class GoToTown implements IOutputType {
  @override
  String description = "Aller en ville";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }
}

class ExploreTemple implements IOutputType {
  @override
  String description = "Explorer le temple";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }
}

class GoLeft implements IOutputType {
  @override
  String description = "Aller en ville";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }
}
