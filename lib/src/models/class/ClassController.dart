import './classList/guerrier.dart';
import './classList/unknown_class.dart';
import 'IClass.dart';

class ClassController {
  Map<String, IClass> classes = {"guerrier": Guerrier()};

  dynamic getClassFromId(cardId) =>
      classes[cardId.toLowerCase()] ?? UnknownClass();
  Iterable get classNames => classes.keys;
}
