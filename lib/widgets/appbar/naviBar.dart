import 'package:flutter/material.dart';

navBar(context) {
  var w = MediaQuery.of(context).size.width;
  var h = MediaQuery.of(context).size.height;
  return AppBar(
    elevation: 0,
    
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        Container(
          width: w * 0.03,
          height: w * 0.03,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 243, 217, 70),
                    Color.fromARGB(255, 179, 26, 95)
                  ])),
                  child: Center(child: Text('AB', style: TextStyle(fontWeight: FontWeight.bold),),)
        ),
        SizedBox(width: w*0.02,),
        Text(
          'Portfolio',
          style: TextStyle(color: Colors.black),
        )
      ],
    ),
    actions: [
      Text('Projects', style: TextStyle(color: Colors.black)),
      SizedBox(width: w*0.03,),
      Text('About me', style: TextStyle(color: Colors.black)),
      SizedBox(width: w*0.03,)
    ],
  );
}
