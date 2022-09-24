import 'ICard.dart';
import 'cardList/items/banana.dart';
import 'cardList/unknown_card.dart';

class CardController {
  Map<String, ICard> cards = {"banana": Banana()};

  dynamic getCardFromId(cardId) => cards[cardId] ?? UnknownCard();
}
