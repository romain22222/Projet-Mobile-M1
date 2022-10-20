import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../cards/cardList/champions/mage_champion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/mage_starting_event.dart';

class Mage extends IClass {
  @override
  IllustrationType classIcon = IllustrationType("mage");

  @override
  IChampion startingChampion = MageChampion();

  @override
  IEvent startingEvent = MageStartingEvent();

  @override
  IllustrationType classSelectionDisplay = IllustrationType("mage/mage.png");

  @override
  String displayDescription =
      "Le mage est un personnage qui utilise la magie pour se battre";

  @override
  String displayName = "Mage";
}
