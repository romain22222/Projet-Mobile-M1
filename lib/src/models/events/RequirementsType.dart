import '../cards/ICard.dart';
import 'IEvent.dart';

typedef RequireFunction = bool Function();

class RequirementsType {
  List<IEvent> requiredEvents;
  List<ICard> requiredCards;
  RequireFunction requirementsFunction;
  RequirementsType(
      {this.requiredEvents = const [],
      this.requiredCards = const [],
      this.requirementsFunction = defaultF});
}

bool defaultF() => true;
