import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDb extends StatefulWidget {
  const HiveDb({Key? key}) : super(key: key);

  @override
  _HiveDbState createState() => _HiveDbState();
}

class _HiveDbState extends State<HiveDb> {
  @override
  void initState() {
    super.initState();
    setUp();
  }

  setUp() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox("test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              var box = Hive.box("test");
              box.put("username", "akash@gmail.com");
              print("saved value ${box.get("username")} ");
            },
            child: Text("SAVE DATA")),
      ),
    );
  }
}
