import 'package:flutter/material.dart';
import 'package:portofolio_onflutter/about/AboutScreen.dart';
import 'package:portofolio_onflutter/widgets/appbar/naviBar.dart';
import 'package:portofolio_onflutter/widgets/card.dart';
import 'package:portofolio_onflutter/widgets/homeText.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        appBar: navBar(context),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: w * 0.35,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: w * 0.06, horizontal: w * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [titleHome(context), contactHome(context)],
                  ),
                )),
            Container(
                width: w * 0.35,
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: w * 0.33,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.decelerate,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(builder: (BuildContext context) {
                        return card(context);
                      });
                    }).toList())),
            Container(
              width: w * 0.30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w*0.04, vertical: w*0.04),
                    child: projectDescription(context),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: w*0.01, horizontal: w*0.04),
                    child: summaryProjects(context),)
                  ],
              ),
            )
          ],
        ));
  }
}
