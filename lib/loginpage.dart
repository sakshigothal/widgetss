import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var rem = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String msg = "";

  get suffixIcon => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Form",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Card(
              color: Colors.pink[200],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Username Here",
                          labelText: "USERNAME",
                          prefixIcon: Icon(Icons.verified_user),
                          suffixIcon: Icon(Icons.check)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password Here",
                        labelText: "PASSWORD",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.check,color: Colors.red,),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: rem,
                          onChanged: (value) {
                            setState(() {
                              rem = value!;
                            });
                          },
                        ),
                        Text("Remember choice"),
                        SizedBox(
                          width: 70,
                        ),
                        Text("Forgot Password"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (username.text.length < 6) {
                          setState(() {
                            msg = "Enter Username";
                          });
                         
                        } else if (password.text.length < 6) {
                          setState(() {
                            msg = "Enter Password";
                          });
                          
                        } else {
                          setState(() {
                            msg="Welcome ${username.text}";
                          });
                        }
                      },
                      child: Text(
                        "Submit",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(msg),
                              FloatingActionButton(onPressed: (){},child: Icon(Icons.add),)

          ],
        ),
      ),
    );
  }
  chagecolor(){
    if(username.text.length<6 && username.text.length<6){
       Icon(Icons.check,color: Colors.green,);
    }
  }
}