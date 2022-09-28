import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../cards/cardList/champions/guerrier_champion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/unknown_event.dart';

class Voleur implements IClass {
  @override
  IllustrationType classIcon = IllustrationType("voleur");

  @override
  IChampion startingChampion = GuerrierChampion();

  @override
  IEvent startingEvent = UnknownEvent();

  @override
  IllustrationType classSelectionDisplay =
      IllustrationType("voleur/voleur.png");

  @override
  String displayDescription = "Le voleur est un personnage furtif et fragile";

  @override
  String displayName = "Voleur";
}
