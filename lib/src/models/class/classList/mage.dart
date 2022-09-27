import 'package:projet_mobile_m1/src/models/cards/cardList/champions/guerrier_champion.dart';

import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/unknown_event.dart';

class Mage implements IClass {
  @override
  IllustrationType classIcon = IllustrationType("mage");

  @override
  IChampion startingChampion = GuerrierChampion();

  @override
  IEvent startingEvent = UnknownEvent();

  @override
  IllustrationType classSelectionDisplay = IllustrationType("mage/mage.png");

  @override
  String displayDescription =
      "Le mage est un personnage qui utilise la magie pour se battre";

  @override
  String displayName = "Mage";
}
