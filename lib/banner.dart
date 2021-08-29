import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:flutter_application_2/constants.dart';
import 'package:http/http.dart' as http;

import 'consatant.dart';

class Apitest extends StatefulWidget {
  const Apitest({Key? key}) : super(key: key);

  @override
  _ApitestState createState() => _ApitestState();
}

class _ApitestState extends State<Apitest> {
  List postResp = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apicall();
  }

  apicall() async {
    print("Request start ${DateTime.now()}");
    var resp = await http.get(Uri.parse(Constants.bannerapi));
    print("Resp here ${DateTime.now()} ${resp.body}");
    setState(() {
       postResp = jsonDecode(resp.body);
    });
    
    print(" jsonResponse ${postResp.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: postResp.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(postResp[index]["title"]), 
              
            
            );
          }),
    );
  }
}