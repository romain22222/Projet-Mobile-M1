import '../../src/models/events/EventController.dart';
import 'History.dart';
import 'Stats.dart';
import 'cards/ICard.dart';
import 'class/IClass.dart';
import 'events/IEvent.dart';

class Player {
  List<ICard> inventory = [];
  List<IEvent> availableEvents = [];
  History history = History();
  IClass classChosen;
  Stats stats = Stats();
  Player(this.classChosen) {
    availableEvents.add(classChosen.startingEvent);
    inventory.add(classChosen.startingChampion);
  }

  initBasicEvents() {
    availableEvents.addAll(EventController.eventValuesFrom(["tent_forest"]));
  }

  IEvent getRandomAvailableEvent() {
    if (availableEvents.isEmpty) {
      // Default event if no available events, to edit with a more common event
      return EventController.getEventFromId("tent_forest");
    }
    availableEvents.shuffle();
    return availableEvents.first;
  }
}
