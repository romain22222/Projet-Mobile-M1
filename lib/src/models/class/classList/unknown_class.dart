import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../cards/cardList/champions/unknown_champion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/unknown_event.dart';

class UnknownClass extends IClass {
  @override
  IllustrationType classIcon = IllustrationType("unknown.png");

  @override
  IChampion startingChampion = UnknownChampion();

  @override
  String displayName = 'UnknownEvent()';

  @override
  IEvent startingEvent = UnknownEvent();

  @override
  IllustrationType classSelectionDisplay = IllustrationType("unknown.png");

  @override
  String displayDescription = "Unknown description";
}
