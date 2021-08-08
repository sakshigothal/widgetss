import 'package:flutter/material.dart';

class PageExample extends StatefulWidget {
  const PageExample({Key? key}) : super(key: key);

  @override
  _PageExampleState createState() => _PageExampleState();
}

class _PageExampleState extends State<PageExample> {
  PageController pgctrl = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: PageView(
        //scrollDirection: Axis.vertical,
        controller: pgctrl,
        children: [
        onboardigcard("111111"),
        onboardigcard("222222"),
        onboardigcard("333333"),
        onboardigcard("444444"),
        ],
      ),
    );
  }
  Widget onboardigcard(String str){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/bg.jpeg"),
        SizedBox(height: 20,),
        Center(child: Text(str)),
      ],
    );
  }
}
