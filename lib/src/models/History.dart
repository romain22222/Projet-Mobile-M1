import 'cards/ICard.dart';
import 'events/IEvent.dart';
import 'events/IOutputType.dart';

class History {
  List<IEvent> eventReceived = [];
  List<ICard> cardReceived = [];
  List<IOutputType> outChosen = [];
  addEventToHistory(IEvent e) => eventReceived.add(e);
  addCardToHistory(ICard c) => cardReceived.add(c);
  addOutToHistory(IOutputType o) => outChosen.add(o);
}
