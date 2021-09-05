import 'package:flutter/material.dart';

class ChildPage extends StatefulWidget {
  final String msgStr;
  const ChildPage({Key? key,required this.msgStr}) : super(key: key);

  @override
  _ChildPageState createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.msgStr),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
