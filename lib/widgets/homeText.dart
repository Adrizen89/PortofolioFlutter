import 'package:flutter/material.dart';

titleHome(context) {
  var w = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Text('Flutter Developer', style: TextStyle(fontSize: w*0.05, fontWeight: FontWeight.bold),)
    ],
  );
}

descriptionHome(context) {
  return Text('I create for you with Flutter');
}

contactHome(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Contacts'),
      Text('adrienberard@hotmail.fr'),
      Text('06 44 38 95 54')
    ],
  );
}