import 'package:flutter/material.dart';

Column buildChoiceColumn(
    Color color, IconData icon, String label, String imagePath) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        width: 100.0,
        height: 350.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          color: Color.fromARGB(0, 255, 255, 255),
          border: const Border(
            top: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
            left: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
            right: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
            bottom: BorderSide(width: 1.0, color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Scaffold buildOutputs(List output) {
  return Scaffold(
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [],
      ),
    ),
  );
}
