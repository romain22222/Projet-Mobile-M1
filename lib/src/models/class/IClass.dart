import '../../utils/IllustrationType.dart';
import '../cards/IChampion.dart';
import '../events/IEvent.dart';

abstract class IClass {
  abstract IllustrationType classIcon;
  abstract IllustrationType classSelectionDisplay;
  abstract String displayName;
  abstract String displayDescription;
  abstract IEvent startingEvent;
  abstract IChampion startingChampion;
}
