import 'package:projet_mobile_m1/src/models/events/IOutputType.dart';

import 'IEvent.dart';
import 'eventList/tent_forest.dart';
import 'eventList/unknown_event.dart';

class EventController {
  static Map<String, IEvent> events = {
    "tent_forest": TentForest(),
  };
  static Map<IEvent, String> reversedEvents =
      events.map((k, v) => MapEntry(v, k));

  static IEvent getEventFromId(eventId) => events[eventId] ?? UnknownEvent();
  static String getIdFromEvent(event) => reversedEvents[event] ?? "unknown";
  static Iterable get eventIds => events.keys;
  static Iterable<IEvent> eventValuesFrom(List<String> ids) {
    return ids.map((e) => getEventFromId(e));
  }

  static Iterable<String> getIdsFromEvents(List<IEvent> availableEvents) {
    return availableEvents.map((e) => getIdFromEvent(e));
  }

  static Iterable<IOutputType> findOutsInEvents(List<String> outChosen) {
    return outChosen.map((e) => findOutInEvents(e));
  }

  static IOutputType findOutInEvents(String id) {
    for (var event in events.values) {
      if (event.outs.down.id == id) return event.outs.down;
      if (event.outs.left.id == id) return event.outs.left;
      if (event.outs.right.id == id) return event.outs.right;
      if (event.outs.up.id == id) return event.outs.up;
    }
    return UnknownOutput();
  }
}
