import 'package:flame/components.dart';
import 'package:projet_mobile_m1/common/belmont.dart';

class FightBackground extends Component {
  // FightBackground() CONSTRUCTEUR
  @override
  Future<void> onLoad() async {
    add(Belmont());
  }
}
