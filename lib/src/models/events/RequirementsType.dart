import 'package:projet_mobile_m1/src/models/cards/ICard.dart';
import 'package:projet_mobile_m1/src/models/events/IEvent.dart';

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
