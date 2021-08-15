//import 'dart:ffi';

import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<String> arr = [
    "Masala Dosa",
    "Pulaw",
    "Biryani",
    "Dal Makhani",
    "Dal Fry"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (var i = 0; i < arr.length; i++) 
          customContainer(Colors.pink),
        ],
      ),
    );
  }

  Widget customContainer(Color col) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: col,
          child: Text("My Food"),
        ),
        Divider(
          height: 5,
          color: Colors.black,
        )
      ],
    );
  }
}
