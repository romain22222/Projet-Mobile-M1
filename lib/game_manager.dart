import 'package:flame/game.dart';
import 'package:projet_mobile_m1/game/game_screen.dart';
import 'package:projet_mobile_m1/main_screen.dart';

class GameManager extends FlameGame {
  late GameScreen _gameScreen;
  late MainScreen _mainScreen;
  GameManager() {
    // _gameScreen = GameScreen();
    _mainScreen = MainScreen();
  }
  @override
  Future<void> onLoad() async {
    add(_mainScreen);
  }
}
