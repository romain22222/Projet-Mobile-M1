import 'RequirementsType.dart';

abstract class IOutputType {
  abstract String description;
  abstract RequirementsType requirements;
  void result();
}

class NoOutput implements IOutputType {
  @override
  String description = "";

  @override
  RequirementsType requirements =
      RequirementsType(requirementsFunction: () => false);

  @override
  void result() => {};
}
