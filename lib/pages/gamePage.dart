//hello world please
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:projet_mobile_m1/pages/settingsPage.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';
import 'package:projet_mobile_m1/src/models/class/IClass.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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

class ChoiceClassWidget extends StatefulWidget {
  const ChoiceClassWidget({super.key});

  @override
  State<ChoiceClassWidget> createState() => _ChoiceClassWidget();
}

class _ChoiceClassWidget extends State<ChoiceClassWidget> {
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
        selectedClass = classList[index]['name'];
        if (classList[index].containsValue(false)) {
          classList[index].update('touched', (value) => true);
          count++;
        } else {
          classList[index].update('touched', (value) => false);
          count--;
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
                  onTap: () => _toggleFavorite(0, classList),
                  child: buildChoiceColumn(
                      classList[0]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[0]['name']),
                ),
                GestureDetector(
                  onTap: () => _toggleFavorite(1, classList),
                  child: buildChoiceColumn(
                      classList[1]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[1]['name']),
                ),
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
                    color: Color.fromARGB(255, 63, 165, 37),
                    child: const Text("Valider"),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: (count == 1
                        ? () => {
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
                            }))
              ],
            )
          ],
        ),
      ],
    );
  }
}
