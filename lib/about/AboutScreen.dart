import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
            width: w*0.3,
            child: Image.asset('images/homme.png'),
          ), 
          Text('About me ', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
            ],
          ),
          Container(
            width: w*0.5,
            height: h*1,
            color: Colors.red,
          )
      ]),
    );
  }
}