import '../Player.dart';
import '../cards/ICard.dart';
import 'IEvent.dart';

typedef RequireFunction = bool Function(Player p);

class RequirementsType {
  List<IEvent> requiredEvents;
  List<ICard> requiredCards;
  RequireFunction requirementsFunction;
  RequirementsType(
      {this.requiredEvents = const [],
      this.requiredCards = const [],
      this.requirementsFunction = defaultF});
  bool fulfilledCards(Player p) =>
      requiredCards.toSet().intersection(p.inventory.toSet()).length ==
      requiredCards.length;
  bool fulfilledEvents(Player p) =>
      requiredEvents
          .toSet()
          .intersection(p.history.eventReceived.toSet())
          .length ==
      requiredEvents.length;
  bool fulfilledFunction(Player p) => requirementsFunction(p);

  /// Say if the requirements are fulfilled
  bool fulfilled(Player p) =>
      fulfilledCards(p) && fulfilledEvents(p) && fulfilledFunction(p);
}

bool defaultF(Player p) => true;
