import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../cards/cardList/champions/unknown_champion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/unknown_event.dart';

class UnknownClass implements IClass {
  @override
  IllustrationType classIcon = IllustrationType("unknown");

  @override
  IChampion startingChampion = UnknownChampion();

  @override
  IEvent startingEvent = UnknownEvent();
}
