import 'package:flutter/material.dart';
import './gamePage.dart';
import './settingsPage.dart';

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamePage()),
                );
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
