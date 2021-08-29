import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgetss/consatant.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({Key? key}) : super(key: key);

  @override
  _ApiTestState createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  List postResp=[];
  var isonline=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }

  apiCall() async {
    print("Request start ${DateTime.now()}");
    try {
      var resp = await http.get(Uri.parse(Constants.userpostapi));
    print("Resp here ${DateTime.now()} ${resp.body}");
    setState(() {
      postResp = json.decode(resp.body);
    });
    
    print("jsonResp ${postResp.length}");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: postResp.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(postResp[index]["title"]),
          subtitle: Text(postResp[index]["body"]),
        );
      }),
    );
  }
}
