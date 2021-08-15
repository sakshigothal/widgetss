import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetss/listviewexample.dart';
import 'package:widgetss/onbording.dart';

import 'dicegame.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => ListViewExample(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange, Colors.white, Colors.green],
            
          ),
        ),
        child: Center(child: Image.asset("assets/ashokchakra.jpeg",width: MediaQuery.of(context).size.width*0.5,),),
      ),
      // body: Center(
      //   child: Image.asset(
      //     "assets/icon/icon.png",
      //   ),
      // ),
    );
  }
}
