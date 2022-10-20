import 'ICard.dart';
import 'cardList/items/banana.dart';
import 'cardList/unknown_card.dart';

class CardController {
  static Map<String, ICard> cards = {"banana": Banana()};

  static Map<ICard, String> reversedCards = cards.map((k, v) => MapEntry(v, k));

  static ICard getCardFromId(cardId) => cards[cardId] ?? UnknownCard();

  static String getIdFromCard(card) => reversedCards[card] ?? "unknown";

  static List<String> getIdsFromCards(List<ICard> inventory) {
    return inventory.map((e) => getIdFromCard(e)) as List<String>;
  }

  static List<ICard> getCardsFromIds(List<String> inventory) {
    return inventory.map((e) => getCardFromId(e)) as List<ICard>;
  }
}
