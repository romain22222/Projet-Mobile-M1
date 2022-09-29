import '../Player.dart';
import 'RequirementsType.dart';

enum Direction { up, down, left, right, wrongDir }

abstract class IOutputType {
  abstract String description;
  abstract RequirementsType requirements;
  void result();
  abstract Direction direction;
}

class UnknownOutput extends IOutputType {
  @override
  String description = "unknown_output";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  void result() {
    // nothing
  }

  @override
  Direction direction = Direction.wrongDir;
}

abstract class NoOutput extends IOutputType {
  @override
  String description = "";

  @override
  RequirementsType requirements =
      RequirementsType(requirementsFunction: (Player p) => false);

  @override
  void result() => {};
}

class NoOutputUp extends NoOutput {
  @override
  Direction direction = Direction.up;
}

class NoOutputDown extends NoOutput {
  @override
  Direction direction = Direction.down;
}

class NoOutputLeft extends NoOutput {
  @override
  Direction direction = Direction.left;
}

class NoOutputRight extends NoOutput {
  @override
  Direction direction = Direction.right;
}
