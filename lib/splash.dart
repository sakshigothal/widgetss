import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startapp();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () async {
        SharedPreferences prefs=  await SharedPreferences.getInstance();
        prefs.setInt("cpunter", 5);
        prefs.setString("email", "kk@gmail.com");
        prefs.setString("password", "12345");
          print("press");
        },
        child: Icon(Icons.add),
      ),
    );
  }
  startapp() async {
    SharedPreferences prefs=  await SharedPreferences.getInstance();
    print("${prefs.getInt("counter")}");
    print("${prefs.getString("email")}");
    print("${prefs.getString("password")}");
  }
}
