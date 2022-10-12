import 'package:flutter/material.dart';
import 'dart:math';

Row buildRowOutputsRightLeftIcons(String outputs, double width, double height) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          print('Pressed');
        },
      ),
      SizedBox(width: min(width, height) / 2),
      IconButton(
        icon: const Icon(Icons.arrow_forward),
        color: Colors.black,
        onPressed: () {
          print('Pressed');
        },
      ),
    ],
  );
}

Column buildColumnOutputs(String outputs, double width, double height) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: const Icon(Icons.arrow_upward),
        color: Colors.black,
        onPressed: () {
          print('Pressed');
        },
      ),
      SizedBox(height: min(width, height) / 2),
      IconButton(
        icon: const Icon(Icons.arrow_downward),
        color: Colors.black,
        onPressed: () {
          print('Pressed');
        },
      ),
    ],
  );
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
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),

            // buildOutputsIcons(outputs[0], width, height),
            // buildOutputsIcons(outputs[3], width, height),
            // buildOutputsIcons(outputs[2], width, height),
            // buildOutputsIcons(outputs[1], width, height),
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
            ),
            Align(
                alignment: Alignment.center,
                child:
                    buildRowOutputsRightLeftIcons(outputs[0], width, height)),
            Align(
                alignment: Alignment.center,
                child: buildColumnOutputs(outputs[1], width, height)),
          ])),
    ],
  );
}
