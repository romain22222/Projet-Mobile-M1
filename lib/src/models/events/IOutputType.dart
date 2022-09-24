import 'package:projet_mobile_m1/src/models/events/RequirementsType.dart';

abstract class IOutputType {
  abstract String description;
  abstract RequirementsType requirements;
  void result();
}
