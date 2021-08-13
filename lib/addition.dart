import 'dart:math';

import 'package:flutter/material.dart';

class Addition extends StatefulWidget {
  const Addition({Key? key}) : super(key: key);

  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  var score = 0;
  var number1, number2, result;
  int randomresult=Random().nextInt(100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink[200],
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Your score: $score",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 50),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: TextField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "+",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: TextField(
                    controller: num2,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: Text("$result"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //print("${num1.text + num2.text}");
                  number1 = int.parse(num1.text);
                  number2 = int.parse(num2.text);
                  result = number1 + number2;
                  randomresult=Random().nextInt(100);
                });
              },
              child: Text("Add"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      
                      score += 1;
                    });
                  },
                  child: Text(
                    "Right",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      score -= 1;
                    });
                  },
                  child: Text(
                    "Wrong",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}