import 'package:flutter/material.dart';
import 'dart:math';

Container buildOutputsIcons(String output, double width, double height) {
  if (output.toString() == 'haut') {
    return Container(
      // width: width / 15,
      alignment: Alignment.topCenter,
      child: IconButton(
        icon: Icon(Icons.arrow_upward),
        color: Colors.red,
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  } else if (output.toString() == 'bas') {
    return (Container(
      // width: width / 15,
      alignment: Alignment.bottomCenter,
      child: IconButton(
        icon: Icon(Icons.arrow_downward),
        color: Colors.red,
        onPressed: () {
          print('Pressed');
        },
      ),
    ));
  } else if (output.toString() == 'gauche') {
    return (Container(
      alignment: Alignment.centerLeft,
      // width: width / 15,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.red,
        onPressed: () {
          print('Pressed');
        },
      ),
    ));
  } else if (output.toString() == 'droite') {
    return (Container(
      // width: width / 15,
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: const Icon(Icons.arrow_forward),
        color: Colors.red,
        onPressed: () {
          print('Pressed');
        },
      ),
    ));
  }
  return Container(child: Text('Null'));
}

Column buildEventCard(Color color, String label, description, String imagePath,
    double width, double height, List<dynamic> outputs) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          width: min(width, height) / 1.5,
          height: min(width, height) / 1.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            color: Color.fromARGB(0, 255, 255, 255),
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
          child: Column(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
            SizedBox(height: height / 15),
            buildOutputsIcons(outputs[0], width, height),
            buildOutputsIcons(outputs[3], width, height),
            buildOutputsIcons(outputs[2], width, height),
            buildOutputsIcons(outputs[1], width, height),
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
                    '$description',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: color,
                    ),
                  ),
                ),
              ),
            )
          ])),
    ],
  );
}
