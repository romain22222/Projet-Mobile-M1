import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/pages/eventPage.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';
import 'package:projet_mobile_m1/src/utils/googleSignIn.dart';

import './settingsPage.dart';
import 'choicePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          MaterialButton(
              onPressed: () {
                Player player;
                signInWithGoogle().then((user) async => {
                      if (FirebaseAuth.instance.currentUser != null)
                        {
                          player = await Player.getPlayerFromUuid(
                              FirebaseAuth.instance.currentUser?.uid ?? ""),
                          if (player.uuid == "")
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChoicePage()),
                              )
                            }
                          else
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EventPage(player)),
                              )
                            }
                        }
                    });
              },
              child: const Text('Jouer')),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
              color: Color.fromARGB(255, 29, 142, 207),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text('Paramètres')),
        ])
        // MaterialButton(onPressed: onSettingsPressed, child: Text('Button 2')),
        // MaterialButton(onPressed: onLadderPressed, child: Text('Button 3')),
      ],
    );
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [buttonSection]),
      ),
    );
  }
}
