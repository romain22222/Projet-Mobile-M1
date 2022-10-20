import '../../utils/IllustrationType.dart';

abstract class ICard {
  abstract String name;
  abstract IllustrationType image;
  void effect();
  void passiveEffect();
  String get id => name + image.imagePath;
}
