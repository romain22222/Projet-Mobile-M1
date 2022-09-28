import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';

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
          ],
        ),
      ),
    );
  }
}
