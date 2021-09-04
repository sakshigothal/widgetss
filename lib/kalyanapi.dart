

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KalyanApi extends StatefulWidget {
  const KalyanApi({ Key? key }) : super(key: key);

  @override
  _KalyanApiState createState() => _KalyanApiState();
}

class _KalyanApiState extends State<KalyanApi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }
  // static var bodyData;
  var apidecode={};
  var storedata=[];

  loaddata() async{
     Map<String, dynamic> bodyData={
       "country":"india",
       "request":"store_locator",
       "device_type":"android"
     };
     var response= await http.post(
        Uri.parse(
            "https://www.kalyanmobile.com/apiv1_staging/store_locator.php"),
            body: bodyData);
            apidecode=json.decode(response.body);
            
            setState(() {
              storedata=apidecode["store_locator"];
              print("${response.body}");
            });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: storedata.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(storedata[index]["store_name"]),
              subtitle: Text(apidecode[storedata[index]["city"]]),
              
            );
          }),
    );
  }
}