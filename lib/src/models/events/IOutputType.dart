import '../Player.dart';
import 'RequirementsType.dart';

enum Direction { up, down, left, right, wrongDir }

typedef ResultType = void Function(Player player);

abstract class IOutputType {
  abstract String description;
  abstract RequirementsType requirements;
  abstract ResultType result;
  abstract Direction direction;
  String get id => "$direction: $description";
}

ResultType defaultResult = (Player player) {
  // nothing
};

class UnknownOutput extends IOutputType {
  @override
  String description = "unknown_output";

  @override
  RequirementsType requirements = RequirementsType();

  @override
  ResultType result = defaultResult;

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
  ResultType result = defaultResult;
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
