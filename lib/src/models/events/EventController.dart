import 'IEvent.dart';
import 'eventList/tent_forest.dart';
import 'eventList/unknown_event.dart';

class EventController {
  Map<String, IEvent> events = {"tent_forest": TentForest()};

  dynamic getEventFromId(cardId) => events[cardId] ?? UnknownEvent();
}
