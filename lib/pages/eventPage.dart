import 'package:flutter/material.dart';

import '../src/models/Player.dart';
import '../src/models/events/IEvent.dart';
import '../widgets/card/card.dart';

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
    IEvent chosenEvent = player.getRandomAvailableEvent();
    player.history.eventReceived.add(chosenEvent);
    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(chosenEvent.background.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildEventCard(Colors.black, width, height, chosenEvent, player),
          ],
        ),
      ),
    );
  }
}

class BuildChoiceEventWidget extends StatefulWidget {
  _EventPageState state;
  BuildChoiceEventWidget(this.state, {Key? key}) : super(key: key);

  @override
  State<BuildChoiceEventWidget> createState() => _ChoiceEventWidget(state);
}

class _ChoiceEventWidget extends State<BuildChoiceEventWidget> {
  _EventPageState state;
  _ChoiceEventWidget(this.state);

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
            child: Text('zeiei'),
          ),
        ],
      ),
    );
  }
}
