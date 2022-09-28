import '../../utils/IllustrationType.dart';
import 'IOutputType.dart';
import 'RequirementsType.dart';

class EventOutput {
  IOutputType up;
  IOutputType down;
  IOutputType left;
  IOutputType right;
  EventOutput(this.up, this.down, this.left, this.right);
}

abstract class IEvent {
  abstract String description;
  abstract EventOutput ;
  abstract IllustrationType background;
  abstract IllustrationType foreground;
// missing classSpecific
  abstract RequirementsType requirements;
}
