import 'package:flutter/material.dart';

Column buildCard(
    Color color,  String label,description, String imagePath,double width,double height) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: width/1.5,
        height: width/1.25,
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
        child:Column(
          children:[
        Align( alignment: Alignment.topCenter, child:Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),),
        SizedBox(height: height/4),

        Align( alignment: Alignment.bottomCenter, child:
        Container(
          width: width/1.5,
          height: height/11,
          decoration:BoxDecoration(
            color: Colors.white.withOpacity(0.75),
          borderRadius: BorderRadius.circular(1),
          ),
          child:
          Center(child:Text('$description',textAlign: TextAlign.center, style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),),),
          ),)
          ]
        )
      ),
    ],
  );
}