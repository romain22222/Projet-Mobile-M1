import 'package:firebase_database/firebase_database.dart';
import 'package:projet_mobile_m1/src/models/class/ClassController.dart';
import 'package:projet_mobile_m1/src/models/class/classList/unknown_class.dart';
import 'package:projet_mobile_m1/src/models/events/eventList/unknown_event.dart';

import '../../src/models/events/EventController.dart';
import 'History.dart';
import 'Stats.dart';
import 'cards/CardController.dart';
import 'cards/ICard.dart';
import 'class/IClass.dart';
import 'events/IEvent.dart';

class JsonFormatPlayer {
  String uuid;
  List<String> inventory;
  List<String> availableEvents;
  HistoryJson history;
  String classChosen;

  StatsJson stats;

  IEvent currentEvent = UnknownEvent();

  JsonFormatPlayer(this.uuid, this.inventory, this.availableEvents,
      this.history, this.classChosen, this.stats);
  JsonFormatPlayer.full(this.uuid, this.inventory, this.availableEvents,
      this.history, this.classChosen, this.stats, this.currentEvent
      /* Fill other params when needed*/
      );
}

class Player {
  String uuid = "";
  List<ICard> inventory = [];
  List<IEvent> availableEvents = [];
  History history = History();
  IClass classChosen = UnknownClass();
  Stats stats = Stats();
  dynamic get jsonFormat => JsonFormatPlayer(
      uuid,
      CardController.getIdsFromCards(inventory) as List<String>,
      EventController.getIdsFromEvents(availableEvents) as List<String>,
      history.toJson(),
      ClassController.getIdFromClass(classChosen),
      stats.toJson());
  Player(this.classChosen, this.uuid) {
    availableEvents.add(classChosen.startingEvent);
    inventory.add(classChosen.startingChampion);
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uuid");
    ref.set(jsonFormat).then((value) => null);
  }
  Player.complex(this.uuid, this.classChosen, this.inventory,
      this.availableEvents, this.history, this.stats);

  Player.empty({this.uuid = ""});

  static Future<Player> getPlayerFromUuid(String uuid) async {
    if (uuid == "") {
      return Player.empty();
    }
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uuid");
    final snapshot = await ref.get();
    if (snapshot.exists) {
      var values = snapshot.value as JsonFormatPlayer;
      return Player.complex(
          values.uuid,
          ClassController.getClassFromId(values.classChosen),
          CardController.getCardsFromIds(values.inventory) as List<ICard>,
          EventController.eventValuesFrom(values.availableEvents)
              as List<IEvent>,
          History.fromJson(values.history),
          Stats.fromJson(values.stats));
    }
    return Player.empty();
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

  save(IEvent currentEvent) {
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uuid");
    ref.update({
      ...jsonFormat,
      "lastEvent": EventController.getIdFromEvent(currentEvent)
    }).then((value) => null);
  }
}
