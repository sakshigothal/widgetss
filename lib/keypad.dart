import 'package:flutter/material.dart';

class Keypad extends StatefulWidget {
  const Keypad({Key? key}) : super(key: key);

  @override
  _KeypadState createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: 400,
      width: 910,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(children: [],),
    );
  }
}
