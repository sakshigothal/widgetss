import 'package:flutter/material.dart';
import 'package:widgetss/keyboard.dart';

class KeyboardLayout extends StatefulWidget {
  const KeyboardLayout({Key? key}) : super(key: key);

  @override
  _KeyboardLayoutState createState() => _KeyboardLayoutState();
}

class _KeyboardLayoutState extends State<KeyboardLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Keyboard(),)

      // Container(
      //   height: 600,
      //   width: 1000,
      //   decoration: BoxDecoration(
      //       color: Color(0xffd9d9d9),
      //       borderRadius: BorderRadius.circular(20),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.grey.withOpacity(0.5),
      //           spreadRadius: 1,
      //           blurRadius: 7,
      //           offset: Offset(8,6)
      //         )
      //       ]),
      // ),
    );
  }
}
