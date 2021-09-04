import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CityListing extends StatefulWidget {
  const CityListing({Key? key}) : super(key: key);

  @override
  _CityListingState createState() => _CityListingState();
}

class _CityListingState extends State<CityListing> {
  var apiDecode = {};
  var stateArr= [];
  List cityArr=[];
  var cityDist={};
  Map<String,dynamic> cityDict= Map<String,dynamic>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCity();
  }

  loadCity() async {
    Map<String, dynamic> bodyData = {
      "request": "city_listing",
      "device_type": "iOS",
      "country": "india"
    };
    var resp = await http.post(
        Uri.parse(
            "https://www.kalyanmobile.com/apiv1_staging/city_listing.php"),
        body: bodyData);
    apiDecode = json.decode(resp.body);
    cityDict = apiDecode["city_array"] as Map<String, dynamic>;
    print("Resp here ${cityDict.keys}");
     setState(() {
       stateArr = cityDict.keys.toList();
     });
    print("State len ${stateArr.length}");
    print("Chandidadh --->>> ${cityDict["Chandigarh"]}");

    for (var item in stateArr) {
      cityArr = cityDict[item];
      print("State Name $item ---->>> ${cityArr.length}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: stateArr.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(stateArr[index].toString()),
              subtitle: Text(cityDict[stateArr[index]].toString().split(",").join("\n")),
              
            );
          }),
    );
  }
}
