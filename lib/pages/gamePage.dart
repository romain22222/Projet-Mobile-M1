//hello world please
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:projet_mobile_m1/pages/settingsPage.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';
import 'package:projet_mobile_m1/src/models/class/ClassController.dart';
import 'package:projet_mobile_m1/src/models/class/IClass.dart';
import 'package:projet_mobile_m1/src/models/class/classList/guerrier.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  // late Player player;

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
  const ChoiceClassWidget({
    super.key,
  });

  @override
  State<ChoiceClassWidget> createState() => _ChoiceClassWidget();
}

class _ChoiceClassWidget extends State<ChoiceClassWidget> {
  // ignore: prefer_final_fields
  // ignore: prefer_final_fields
  List<IClass> classes = [Guerrier(), Guerrier(), Guerrier(), Guerrier()];
  late List<String> names;
  kek() => names = classes.map((e) => e.name).toList();
  List<Map> isTouched = [
    {String: names, "touched": false},
    {String: name, "touched": false},
    {String: name, "touched": false},
    {String: name, "touched": false}
  ];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    kek();
    void _toggleFavorite(index) {
      setState(() {
        if (_isTouchedList[index].values.first == true) {
          _isTouchedList[index].update(
              _isTouchedList[index].keys.firstWhere((element) => true),
              (value) => false);
          count--;
        } else {
          _isTouchedList[index].update(
              _isTouchedList[index].keys.firstWhere((element) => true),
              (value) => true);
          count++;
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
                      _isTouchedList[0].values.first ? Colors.red : Colors.grey,
                      Icons.ac_unit,
                      _isTouchedList[0].keys.first.name),
                ),
                // GestureDetector(
                //   onTap: () => _toggleFavorite(1),
                //   child: buildChoiceColumn(
                //       _isTouchedList[1].values.first ? Colors.red : Colors.grey,
                //       Icons.ac_unit,
                //       _isTouchedList[1].keys.first.name),
                // ),
                // GestureDetector(
                //   onTap: () => _toggleFavorite(2),
                //   child: buildChoiceColumn(
                //       _isTouchedList[2].values.first ? Colors.red : Colors.grey,
                //       Icons.ac_unit,
                //       _isTouchedList[2].keys.first.name),
                // ),
              ],
            ),
            Row(
              children: [
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
