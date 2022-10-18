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
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    IEvent currentEvent = player.getRandomAvailableEvent();

    player.history.eventReceived.add(currentEvent);
    player.availableEvents.remove(currentEvent);
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: Container(
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(currentEvent.background.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildEventCard(
                    Colors.black, width, height, currentEvent, player, context),
              ],
            ),
          ),
        ));
  }
}
