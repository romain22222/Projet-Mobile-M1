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
    availableEvents.shuffle();
    return availableEvents.first;
  }
}
