import 'package:projet_mobile_m1/src/models/events/IOutputType.dart';
import 'package:projet_mobile_m1/src/models/events/RequirementsType.dart';
import 'package:projet_mobile_m1/src/utils/IllustrationType.dart';

class EventOutput {
  IOutputType up;
  IOutputType down;
  IOutputType left;
  IOutputType right;
  EventOutput(this.up, this.down, this.left, this.right);
}

abstract class IEvent {
  abstract String description;
  abstract EventOutput outputs;
  abstract IllustrationType background;
  abstract IllustrationType foreground;
// missing classSpecific
  abstract RequirementsType requirements;
}
