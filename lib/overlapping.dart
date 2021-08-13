import 'package:flutter/material.dart';

class Overlap extends StatefulWidget {
  const Overlap({Key? key}) : super(key: key);

  @override
  _OverlapState createState() => _OverlapState();
}

class _OverlapState extends State<Overlap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Overlapping"),),
      body: Stack(
        children: [
          Container(
          height: double.infinity,
          width: 500,
          color: Colors.blueGrey,
        ),
        Container(
          height: 640,
          width: 350,
          color: Colors.pink,
        ),
        Container(
          height: 590,
          width: 300,
          color: Colors.green,
        ),
        Container(
          height: 540,
          width: 250,
          color: Colors.orange,
        ),
        Container(
          height: 490,
          width: 200,
          color: Colors.purple,
        ),
        Container(
          height: 430,
          width: 150,
          color: Colors.pinkAccent,
        ),
        Container(
          height: 380,
          width: 100,
          color: Colors.black,
        ),
        ],
      ),
    );
  }
}