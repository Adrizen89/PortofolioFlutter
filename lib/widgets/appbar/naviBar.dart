import 'package:flutter/material.dart';


navBar() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('About'),
        Text('Works'),
        Text('Socials Network')
      ],
    );
}