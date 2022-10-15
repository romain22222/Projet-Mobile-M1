import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class MageStartingEvent extends IEvent {
  @override
  String description =
      "Vous venez de vous réveiller dans un temple, et observez les alentours...";
  @override
  EventOutput outs =
      EventOutput(GoToTown(), ExploreTemple(), NoOutputLeft(), NoOutputRight());

  @override
  IllustrationType background = IllustrationType("unknown.png");

  @override
  IllustrationType foreground = IllustrationType("events/mage/mage_00.png");

  @override
  RequirementsType requirements = RequirementsType();

  @override
  String zone = "Temple";
}

class GoToTown extends IOutputType {
  @override
  String description = "Aller en ville";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  ResultType result = defaultResult;

  @override
  Direction direction = Direction.up;
}

class ExploreTemple implements IOutputType {
  @override
  String description = "Explorer le temple";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  ResultType result = defaultResult;

  @override
  Direction direction = Direction.down;
}
