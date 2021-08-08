import 'package:flutter/material.dart';
//import 'package:widgetss/dicegame.dart';

//import 'pageexample.dart';
import 'scrolltest.dart';

void main() {
  runApp(
    MaterialApp(
      home: ScrollTest(),
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  String msg = "";
  var rem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Form",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Name here",
                        labelText: "USERNAME",
                        prefixIcon: Icon(Icons.verified_user),
                        suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password Here",
                        labelText: "PASSWORD",
                        prefixIcon: Icon(Icons.verified_user),
                        suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("press");
                        if (username.text.length < 6) {
                          print("hey");
                          setState(() {
                            msg = "Enter Username";
                          });
                        } else if (pass.text.length < 6) {
                          setState(() {
                            msg = "Enter Password";
                          });
                        } else {
                          setState(() {
                            msg = "WELCOME ${username.text}";
                          });
                        }
                      },
                      child: Text("Hit Me!"),
                    ),
                    Checkbox(
                        value: rem,
                        onChanged: (val) {
                          setState(() {
                            this.rem = rem;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}
