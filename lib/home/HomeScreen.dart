import 'package:flutter/material.dart';
import 'package:portofolio_onflutter/widgets/appbar/naviBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: w*0.5,
            color: Colors.white,
            child: Positioned(
              top: 200,
              child: navBar()),
          ), 
          Container(
            width: w*0.5,
            height: h*1,
            color:Colors.yellow
          )
        ],
      )
    );
  }
}