import 'package:projet_mobile_m1/src/models/cards/CardController.dart';
import 'package:projet_mobile_m1/src/models/events/EventController.dart';

import 'cards/ICard.dart';
import 'events/IEvent.dart';
import 'events/IOutputType.dart';

class HistoryJson {
  List<String> eventReceived;
  List<String> cardReceived;
  List<String> outChosen;
  HistoryJson(this.eventReceived, this.cardReceived, this.outChosen);
}

class History {
  List<IEvent> eventReceived = [];
  List<ICard> cardReceived = [];
  List<IOutputType> outChosen = [];
  addEventToHistory(IEvent e) => eventReceived.add(e);
  addCardToHistory(ICard c) => cardReceived.add(c);
  addOutToHistory(IOutputType o) => outChosen.add(o);

  toJson() => HistoryJson(
      EventController.getIdsFromEvents(eventReceived) as List<String>,
      CardController.getIdsFromCards(cardReceived) as List<String>,
      outChosen.map((e) => e.id) as List<String>);

  History();

  History.fromJson(HistoryJson history) {
    eventReceived =
        EventController.eventValuesFrom(history.eventReceived) as List<IEvent>;
    cardReceived =
        CardController.getCardsFromIds(history.eventReceived) as List<ICard>;
    outChosen = EventController.findOutsInEvents(history.outChosen)
        as List<IOutputType>;
  }
}
