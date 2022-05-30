import 'package:flutter/material.dart';


navBar() {
  return AppBar(
    leading: Text('Portfolio'),
    actions: [
      Text('Projects'),
      Text('About me')
    ],
  );
}