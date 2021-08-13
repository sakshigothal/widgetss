import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OddEven extends StatefulWidget {
  const OddEven({Key? key}) : super(key: key);

  @override
  _OddEvenState createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  TextEditingController num = TextEditingController();
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.pink,
            height: 500,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter Your Number:",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextField(
                  controller: num,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = int.parse(num.text);
                       if (result % 2 == 0) {
                        result = "even";
                      } else {
                        result = "odd";
                      }
                    });
                  },
                  child: Text(
                    "SUBMIT",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("your number is $result"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
