import '../../../utils/IllustrationType.dart';
import '../IEvent.dart';
import '../IOutputType.dart';
import '../RequirementsType.dart';

class UnknownEvent implements IEvent {
  @override
  String description =
      "starting event: lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";
  @override
  EventOutput outputs = EventOutput(
      UnknownOutput(), UnknownOutput(), UnknownOutput(), UnknownOutput());

  @override
  IllustrationType background = IllustrationType("unknown");

  @override
  IllustrationType foreground = IllustrationType("unknown");

  @override
  RequirementsType requirements = RequirementsType();
}

class UnknownOutput implements IOutputType {
  @override
  String description = "unknown_output";
  @override
  RequirementsType requirements = RequirementsType();
  @override
  void result() {
    // nothing
  }
}
