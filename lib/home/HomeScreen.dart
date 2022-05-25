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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          width: w * 0.5,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HELLO,',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: w * 0.03,
              ),
              Text('I am a Developper of Flutter !',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              SizedBox(
                height: w * 0.03,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Hi there');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.red, Colors.yellow]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: w*0.2,
                    height: w*0.03,
                    alignment: Alignment.center,
                    child: const Text(
                      'READ',
                      style: const TextStyle(
                          fontSize: 20,),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(width: w * 0.5, height: h * 1, color: Colors.yellow)
      ],
    ));
  }
}
