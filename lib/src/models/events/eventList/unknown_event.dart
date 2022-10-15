import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class UnknownEvent extends IEvent {
  @override
  String description = "unknown_event";
  @override
  EventOutput outs = EventOutput(
      UnknownOutput(), UnknownOutput(), UnknownOutput(), UnknownOutput());

  @override
  IllustrationType background = IllustrationType("unknown.png");

  @override
  IllustrationType foreground = IllustrationType("unknown.png");

  @override
  RequirementsType requirements = RequirementsType();

  @override
  String zone = "unknown";
}
