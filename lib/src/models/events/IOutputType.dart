import 'RequirementsType.dart';

abstract class IOutputType {
  abstract String description;
  abstract RequirementsType requirements;
  void result();
}
