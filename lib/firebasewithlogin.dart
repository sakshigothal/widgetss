import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginWithFirebase extends StatefulWidget {
  const LoginWithFirebase({Key? key}) : super(key: key);

  @override
  _LoginWithFirebaseState createState() => _LoginWithFirebaseState();
}

class _LoginWithFirebaseState extends State<LoginWithFirebase> {
  TextEditingController unTEC = TextEditingController();
  TextEditingController pass = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
                      controller: unTEC,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Name here",
                        prefixIcon: Icon(Icons.verified_user),
                        // suffixIcon: Icon(Icons.verified_user_sharp),
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
                        prefixIcon: Icon(Icons.verified_user),
                        // suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("press");
                        // if (username.text.length > 6) {
                        //   print("hey");
                        //   setState(() {
                        //     msg = "Enter Username";
                        //   });
                        // } else if (pass.text.length > 6) {
                        //   setState(() {
                        //     msg = "Enter Password";
                        //   });
                        // } else {
                        //   setState(() {
                        //     msg = "WELCOME ${username.text}";
                        //   });
                        // }
                        register();
                      },
                      child: Text("Hit Me!"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: Text("Register"),
                    ),
                    TextField(
                      // obscuringCharacter: "*",
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password Here",
                        prefixIcon: Icon(Icons.verified_user),
                        // suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: Text("Register"),
                    ),
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

  register() async {
    print("Register ${unTEC.text} .. ${pass.text}");
    try {
      UserCredential userCred = await _auth.createUserWithEmailAndPassword(
          email: unTEC.text, password: pass.text);
      if (userCred.user != null) {
        print(userCred.user!.uid);
        await userCred.user!.sendEmailVerification();
      } else {
        print("issue creating an user ${userCred}");
      }
    } catch (e) {
      print("$e");
      SnackBar snack = SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }
  }

  login() async {
    print("Register ${unTEC.text} .. ${pass.text}");
    // await _auth.sendPasswordResetEmail(email: unTEC.text);
    // return;
    try {
      UserCredential userCred = await _auth.createUserWithEmailAndPassword(
          email: unTEC.text, password: pass.text);
      if (userCred.user != null) {
        print(userCred.user!.uid);
        print("isEmailVerified ${userCred.user!.emailVerified}");
      } else {
        print("issue creating an user ${userCred}");
      }
    } catch (e) {
      print("$e");
    }
  }

  sendOtp() async {
    print("send otp");
    _auth.verifyPhoneNumber(
        phoneNumber: "+919892426230",
        verificationCompleted: (cred) {
          print("verificationCompleted ${cred.smsCode}");
        },
        verificationFailed: (ex) {
          print("verificationFailed ${ex.message}");
        },
        codeSent: (code, len) {
          print("codeSent");
        },
        codeAutoRetrievalTimeout: (timeout) {
          print("codeAutoRetrievalTimeout");
        });
  }
}
