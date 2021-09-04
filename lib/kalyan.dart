import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KalyanapiExample extends StatefulWidget {
  const KalyanapiExample({Key? key}) : super(key: key);

  @override
  _KalyanapiExampleState createState() => _KalyanapiExampleState();
}

class _KalyanapiExampleState extends State<KalyanapiExample> {
  var data={};
  loadData() async {
    Map<String, dynamic> bodyData = {
      "request": "home_page",
      "device_type": "android",
      "country": "india"
    };

    var response = await http.post(
      Uri.parse("https://www.kalyanmobile.com/apiv1_staging/home_page.php?"),
      body: bodyData,
    );
    data=json.decode(response.body);
    print("$data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
