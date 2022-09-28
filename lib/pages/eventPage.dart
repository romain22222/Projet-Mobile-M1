import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/pages/choicePage.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';
import 'package:projet_mobile_m1/src/models/events/EventController.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';

class EventPage extends StatefulWidget {
  Player player;
  EventPage(this.player, {Key? key}) : super(key: key);
  @override
  _EventPageState createState() => _EventPageState(player);
}

class _EventPageState extends State<EventPage> {
  Player player;
  _EventPageState(this.player);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
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
          ],
        ),
      ),
    );
  }
}

class ChoiceEventWidget extends StatefulWidget {
  _EventPageState state;
  ChoiceEventWidget(this.state, {Key? key}) : super(key: key);

  @override
  State<ChoiceEventWidget> createState() => _ChoiceEventWidget(state);
}

class _ChoiceEventWidget extends State<ChoiceEventWidget> {
  _EventPageState state;
  _ChoiceEventWidget(this.state);
  final List<Map> events = [
    {
      "zone": "test",
      "description": "test",
      "image": "assets/images/events/event_00.png",
      "outputs": [
        {
          "description": "test",
          "result": () => {},
          "requirements": {
            "some": "thing",
          }
        },
        {
          "zone": "test",
          "description": "test",
          "image": "assets/images/events/event_00.png",
          "outputs": [
            {
              "description": "test",
              "result": () => {},
              "requirements": {
                "some": "thing",
              }
            }
          ]
        },
      ]
    }
  ];
  String selectedEvent = "";
  @override
  Widget build(BuildContext context) {
    void _toggleChoice(index, eventList) {
      setState(() {
        eventList.forEach((e) => e.update('touched', (value) => false));
        selectedEvent = eventList[index]['name'];
      });
    }

    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {},
            child: buildChoiceColumn(color, icon, label, imagePath),
          ),
        ],
      ),
    );
  }
}
