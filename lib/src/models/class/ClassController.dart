import './classList/guerrier.dart';
import './classList/mage.dart';
import './classList/unknown_class.dart';
import './classList/voleur.dart';
import 'IClass.dart';

class ClassController {
  static Map<String, IClass> classes = {
    "guerrier": Guerrier(),
    "voleur": Voleur(),
    "mage": Mage()
  };

  static Map<IClass, String> reversedClass =
      classes.map((k, v) => MapEntry(v, k));

  static dynamic getClassFromId(classId) =>
      classes[classId.toLowerCase()] ?? UnknownClass();

  static Iterable get classNames => classes.keys;

  static dynamic getClassSelectionFromList(List<String> classListId) {
    List<Map> classSelectionList = [];
    for (var classId in classListId) {
      IClass correspondingClass = getClassFromId(classId);
      classSelectionList.add({
        'name': correspondingClass.displayName,
        'touched': false,
        'imagePath': correspondingClass.classSelectionDisplay.imagePath,
        'description': correspondingClass.displayDescription
      });
    }
    return classSelectionList;
  }

  static getIdFromClass(IClass classChosen) =>
      reversedClass[classChosen] ?? "unknown";
}
