import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      Text('Contacts', style: TextStyle(fontWeight: FontWeight.bold),),
      Text('adrienberard@hotmail.fr'),
      Text('06 44 38 95 54')
    ],
  );
}

projectDescription(context) {
  var w = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Project Coulourful', style: TextStyle(fontWeight: FontWeight.bold, fontSize: w*0.016)),
      Text('Don’t be afraid to make your project colourful.  Show your personality through different colours.'),
      moreBtn(context)
    ],
  );
}

moreBtn(context) {
  return GestureDetector(
    onTap: () {
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('more'),
        Icon(Icons.arrow_forward)
      ],
    ),
  );
}

summaryProjects(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text('Colourful'),
      Text('Powerful'),
      Text('Beautiful'),
      Text('Careful')
    ],
  );
}