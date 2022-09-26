//hello world please
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:projet_mobile_m1/pages/settingsPage.dart';
import 'package:projet_mobile_m1/src/models/class/ClassController.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';

import '../src/models/Player.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Player player;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgrounds/background_00.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Choisissez votre destin !"),
          ChoiceClassWidget(this),
        ],
      ),
    ));
  }
}

class ChoiceClassWidget extends StatefulWidget {
  _GamePageState state;
  ChoiceClassWidget(this.state, {super.key});

  @override
  State<ChoiceClassWidget> createState() => _ChoiceClassWidget(state);
}

class _ChoiceClassWidget extends State<ChoiceClassWidget> {
  _GamePageState state;
  _ChoiceClassWidget(this.state);

  final List<Map> classList = [
    {'name': 'Mage', 'touched': false},
    {'name': 'Guerrier', 'touched': false},
    {'name': 'Voleur', 'touched': false}
  ];
  int count = 0;

  String selectedClass = "";

  @override
  Widget build(BuildContext context) {
    void _toggleFavorite(index, classList) {
      setState(() {
        classList.forEach((e) => e.update('touched', (value) => false));
        selectedClass = classList[index]['name'];
        count = 1;
        classList[index].update('touched', (value) => true);
      });
    }

    Iterable listOfClasses = ClassController().classNames;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _toggleFavorite(0, classList),
                  child: buildChoiceColumn(
                      classList[0]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[0]['name']),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _toggleFavorite(1, classList),
                  child: buildChoiceColumn(
                      classList[1]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[1]['name']),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _toggleFavorite(2, classList),
                  child: buildChoiceColumn(
                      classList[2]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[2]['name']),
                ),
              ],
            ),
            Row(
              children: [
                Text('$count'),
                Text('$selectedClass'),
                MaterialButton(
                    color: const Color.fromARGB(255, 63, 165, 37),
                    child: const Text("Valider"),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: (count == 1
                        ? () => {
                              state.player = Player(ClassController()
                                  .getClassFromId(selectedClass)),
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SettingsPage()),
                              )
                            }
                        : () => {
                              Fluttertoast.showToast(
                                  msg: "Vous devez choisir une classe !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0)
                            })),
                Text('$listOfClasses'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
