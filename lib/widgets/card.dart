import 'package:flutter/material.dart';

card(context) {
  var w = MediaQuery.of(context).size.width;
  return Container(
    width: w * 0.25,
    height: w * 0.32,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(8, 8), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 243, 217, 70),
              Color.fromARGB(255, 179, 26, 95)
            ])),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: w*0.0, vertical: w*0.02),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(
          'Colourful',
          style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.6)),
        )),)
  );
}
