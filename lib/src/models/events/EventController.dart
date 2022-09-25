import 'IEvent.dart';
import 'eventList/unknown_event.dart';

class EventController {
  Map<String, IEvent> events = {};

  dynamic getEventFromId(cardId) => events[cardId] ?? UnknownEvent();
}
