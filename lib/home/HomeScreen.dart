import 'package:flutter/material.dart';
import 'package:portofolio_onflutter/about/AboutScreen.dart';
import 'package:portofolio_onflutter/widgets/appbar/naviBar.dart';
import 'package:portofolio_onflutter/widgets/homeText.dart';

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
      appBar: navBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.green,
              width: w*0.35,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: w*0.06, horizontal: w*0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleHome(context),
                  contactHome(context)
                ],
              ),)
            ),
            Container(
              color: Colors.red,
              width: w*0.35,
              ),
            Container(
              color: Colors.yellow,
              width: w*0.30,
              )
          ],
        )
        );
  }
}
