import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../cards/cardList/champions/guerrier_champion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/guerrier_starting_event.dart';

class Guerrier extends IClass {
  @override
  IllustrationType classIcon = IllustrationType("guerrier");

  @override
  IChampion startingChampion = GuerrierChampion();

  @override
  IEvent startingEvent = GuerrierStartingEvent();

  @override
  IllustrationType classSelectionDisplay =
      IllustrationType("warrior/warrior.png");

  @override
  String displayDescription =
      "Le guerrier est un personnage qui se bat au corps à corps";

  @override
  String displayName = "Guerrier";
}
