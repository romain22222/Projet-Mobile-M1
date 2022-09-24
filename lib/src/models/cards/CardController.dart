import 'ICard.dart';
import 'cardList/UnknownCard.dart';
import 'cardList/items/banana.dart';

class CardController {
  Map<String, ICard> cards = {"banana": Banana()};

  ICard? getCardFromId(cardId) => cards[cardId] ?? UnknownCard();
}
