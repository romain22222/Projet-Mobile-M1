import 'IEvent.dart';
import 'eventList/default_event.dart';

class EventController {
  Map<String, IEvent> events = {};

  dynamic getEventFromId(cardId) => events[cardId] ?? UnknownEvent();
}
