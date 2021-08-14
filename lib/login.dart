import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txt = TextEditingController();
  var er = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
              child: Card(
                color: Colors.pink[200],
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                      child: TextField(
                        scrollPadding: const EdgeInsets.all(20),
                        controller: txt,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Username Here",
                          labelText: "USERNAME",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (txt.text.length == 0) {
                            er = "please enter your name!!!";
                          }
                        });
                      },
                      child: Text(
                        "Submit",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(er)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
