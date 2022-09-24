import 'package:projet_mobile_m1/common/fight_background.dart';
import 'package:projet_mobile_m1/game_manager.dart';
import 'package:flame/components.dart';

class MainScreen extends Component with HasGameRef<GameManager> {
  @override
  Future<void> onLoad() async {
    add(FightBackground());
    //add an hello world
  }
}
