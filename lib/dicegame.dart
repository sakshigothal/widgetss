import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int randomNo = Random().nextInt(6) + 1;
  @override
  void initState() {
    super.initState();

    print("random $randomNo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Game"),
      ),
      drawer: Drawer(),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/dice$randomNo.png"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                randomNo = Random().nextInt(6) + 1;
              });
            },
            child: Text(
              "press",
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
