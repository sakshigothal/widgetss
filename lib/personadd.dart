import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'models/person.dart';

class PersonAdd extends StatefulWidget {
  const PersonAdd({Key? key}) : super(key: key);

  @override
  _PersonAddState createState() => _PersonAddState();
}

class _PersonAddState extends State<PersonAdd> {
  TextEditingController nameTEC = TextEditingController();
  TextEditingController ageTEC = TextEditingController();

  @override
  void initState() {
    super.initState();
    setup();
  }

  setup() {
    var box = Hive.box("personBox");
    print("Box Len ${box.length}");
    // var map = box.getAt(1);
    // print("data ${map["age"]}");

    // box.deleteAt(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(controller: nameTEC),
            TextField(controller: ageTEC),
            ElevatedButton(
                onPressed: () {
                  var box = Hive.box("personBox");
                  Person p = Person()

// Person p = Person()
                    ..name = nameTEC.text
                    ..age = int.parse(ageTEC.text);
                  box.add(p);
                  // Map<String, dynamic> map = Map<String, dynamic>();
                  // map["name"] = nameTEC.text;
                  // map["age"] = int.parse(ageTEC.text);

                  // box.add(map);
                },
                child: Text("SAVE"))
          ],
        ),
      ),
    );
  }
}
