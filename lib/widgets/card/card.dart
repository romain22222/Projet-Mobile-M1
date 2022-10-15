import 'dart:math';

import 'package:flutter/material.dart';

import '../../pages/eventPage.dart';
import '../../src/models/Player.dart';
import '../../src/models/events/IEvent.dart';
import '../../src/models/events/IOutputType.dart';

void commonActionOfOutput(
    BuildContext context, IOutputType output, Player player) {
  print("Pressed ${output.direction}");
  player.history.outChosen.add(output);
  // TODO check si fin de partie -> écran de fin
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => EventPage(player)),
  );
}

IconButton createOutput(
    IconData icon, IOutputType output, Player player, BuildContext context) {
  // TODO prendre en charge la NoOutput -> griser + ignorer le clic
  // TODO rajouter le fait d'afficher la description
  return IconButton(
      icon: Icon(icon),
      color: Colors.black,
      onPressed: () {
        if (output is NoOutput || output is UnknownOutput) {
          print("Ignored");
          return;
        }
        output.result(player);
        commonActionOfOutput(context, output, player);
      });
}

Row buildRowOutputsRightLeftIcons(EventOutput outputs, double width,
    double height, Player player, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      createOutput(Icons.arrow_back, outputs.left, player, context),
      SizedBox(width: min(width, height) / 2.5),
      createOutput(Icons.arrow_forward, outputs.right, player, context),
    ],
  );
}

Column buildColumnOutputs(EventOutput outputs, double width, double height,
    Player player, BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      createOutput(Icons.arrow_upward, outputs.up, player, context),
      SizedBox(height: min(width, height) / 2),
      createOutput(Icons.arrow_downward, outputs.down, player, context),
    ],
  );
}

Column buildEventCard(Color color, double width, double height, IEvent event,
    Player player, BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          width: min(width, height) / 1.5,
          height: min(width, height) / 1.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(event.foreground.imagePath),
              fit: BoxFit.cover,
            ),
            color: const Color.fromARGB(0, 255, 255, 255),
            border: const Border(
              top: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
              left: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
              right:
                  BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
              bottom:
                  BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          margin: const EdgeInsets.only(top: 8),
          child: Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                event.zone,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width / 1.5,
                height: height / 11,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Center(
                  child: Text(
                    event.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: buildRowOutputsRightLeftIcons(
                    event.outs, width, height, player, context)),
            Align(
                alignment: Alignment.center,
                child: buildColumnOutputs(
                    event.outs, width, height, player, context)),
          ])),
    ],
  );
}
