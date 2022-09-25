//hello world please
import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Choisissez votre destin !"),
          ChoiceClassWidget(),
        ],
      ),
    ));
  }
}

// class _GamePageState extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Game Page'),
//         ),
//         body: const Center(
//           child: Text('coucou'),
//         ));
//   }
// }

class ChoiceClassWidget extends StatefulWidget {
  const ChoiceClassWidget({super.key});

  @override
  State<ChoiceClassWidget> createState() => _ChoiceClassWidget();
}

class _ChoiceClassWidget extends State<ChoiceClassWidget> {
  List<bool> _isTouchedList = [false, false, false];
  @override
  Widget build(BuildContext context) {
    void _toggleFavorite(index) {
      setState(() {
        if (_isTouchedList[index]) {
          _isTouchedList[index] = false;
        } else {
          _isTouchedList[index] = true;
        }
      });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _toggleFavorite(0),
                  child: buildChoiceColumn(
                      _isTouchedList[0] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      "Mage"),
                ),
                GestureDetector(
                  onTap: () => _toggleFavorite(1),
                  child: buildChoiceColumn(
                      _isTouchedList[1] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      "Mage"),
                ),
                GestureDetector(
                  onTap: () => _toggleFavorite(2),
                  child: buildChoiceColumn(
                      _isTouchedList[2] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      "Mage"),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
