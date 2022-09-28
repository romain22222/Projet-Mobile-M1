//hello world please
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../pages/settingsPage.dart';
import '../src/models/Player.dart';
import '../src/models/class/ClassController.dart';
import '../widgets/events/choice.dart';

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
        children: [
          const Text("Choisissez votre destin !"),
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

  final List<Map> classList =
      ClassController.getClassSelectionFromList(["mage", "guerrier", "voleur"]);
  int count = 0;
  int index = 0;
  String description = "";
  String selectedClass = "";
  @override
  Widget build(BuildContext context) {
    void _toggleFavorite(index, classList) {
      setState(() {
        classList.forEach((e) => e.update('touched', (value) => false));
        selectedClass = classList[index]['name'];
        description = classList[index]['description'];
        count = 1;
        classList[index].update('touched', (value) => true);
        index = classList.firstWhere((element) => element['touched'] == true);
      });
    }

    Iterable listOfClasses = ClassController.classNames;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                      classList[0]['name'],
                      classList[0]['imagePath']),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _toggleFavorite(1, classList),
                  child: buildChoiceColumn(
                      classList[1]['touched'] ? Colors.red : Colors.grey,
                      Icons.access_alarm,
                      classList[1]['name'],
                      classList[1]['imagePath']),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _toggleFavorite(2, classList),
                  child: buildChoiceColumn(
                      classList[2]['touched'] ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      classList[2]['name'],
                      classList[2]['imagePath']),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 25),
                Container(
                    width: width,
                    height: height / 9,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Flexible(child: Text('$description'), fit: FlexFit.tight),
                      MaterialButton(
                          color: const Color.fromARGB(255, 63, 165, 37),
                          child: const Text("Valider"),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: (count == 1
                              ? () => {
                                    state.player = Player(
                                        ClassController.getClassFromId(
                                            selectedClass)),
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SettingsPage()),
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
                      SizedBox(
                        width: width * 0.1,
                      ),
                    ])),
              ],
            )
          ],
        ),
      ],
    );
  }
}
