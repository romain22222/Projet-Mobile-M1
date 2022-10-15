import 'IEvent.dart';
import 'eventList/tent_forest.dart';
import 'eventList/unknown_event.dart';

class EventController {
  static Map<String, IEvent> events = {"tent_forest": TentForest()};

  static IEvent getEventFromId(cardId) => events[cardId] ?? UnknownEvent();
  static Iterable get eventIds => events.keys;
  static List<IEvent> eventValuesFrom(List<String> ids) {
    List<IEvent> eventsCollected = [];
    for (var eventId in ids) {
      eventsCollected.add(getEventFromId(eventId));
    }
    return eventsCollected;
  }
}
