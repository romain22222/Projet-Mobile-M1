import 'package:projet_mobile_m1/src/models/events/IEvent.dart';
import 'package:projet_mobile_m1/src/models/events/IOutputType.dart';
import 'package:projet_mobile_m1/src/models/events/RequirementsType.dart';
import 'package:projet_mobile_m1/src/utils/IllustrationType.dart';

class UnknownEvent implements IEvent {
  @override
  String description = "unknown_event";
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
