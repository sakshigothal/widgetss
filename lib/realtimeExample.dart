import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealTimeExample extends StatefulWidget {
  const RealTimeExample({Key? key}) : super(key: key);

  @override
  _RealTimeExampleState createState() => _RealTimeExampleState();
}

class _RealTimeExampleState extends State<RealTimeExample> {
  late DatabaseReference dbref;
  late DatabaseReference counterRef;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setup();
  }

  setup() async {
    UserCredential usercred = await _auth.signInAnonymously();
    print(usercred.user!.uid);
    dbref = FirebaseDatabase.instance.reference();
    counterRef = FirebaseDatabase.instance.reference().child("counter");
    counterRef.keepSynced(true);

    counterRef.onValue.listen((event) {
      print("Event Occured");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(""),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dbref.child("counter").set("1");
            // increment();
          });
        },
        child: Text("+"),
      ),
    );
  }

  // increment() {
  //   for (var i = 0; i >= 10; i++) {
  //     dbref.child("counter").set(count + 1);
  //   }
  // }
}
