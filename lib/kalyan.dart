import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KalyanApiExample extends StatefulWidget {
  const KalyanApiExample({Key? key}) : super(key: key);

  @override
  _KalyanApiExampleState createState() => _KalyanApiExampleState();
}

class _KalyanApiExampleState extends State<KalyanApiExample> {
  var dict = [];
  var branddic;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  // var firstdict={};
  var secondlist = [];

  Map<String, dynamic> apikeys = {
    "request": "home_page",
    "device_type": "android",
    "country": "india"
  };

  loadData() async {
    var response = await http.post(
      Uri.parse("https://www.kalyanmobile.com/apiv1_staging/home_page.php"),
      body: apikeys,
    );
    print("${response.body}");
    var resp = json.decode(response.body);
    setState(() {
      dict = resp["product_of_month_listing"];
      branddic = resp["brand"];
      print("$dict");
      print("$branddic");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 600,
                width: 350,
                color: Colors.pink[300],
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          dict[index]["title"].toString(),
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Column(
                          children: [
                            // Text(dict[index]["product_name"].toString()),
                            Image.network(
                                dict[index]["product_image"].toString()),
                            // Text(dict[index]["brand_name"].toString()),
                            Image.network(
                                dict[index]["brand_logo_path"].toString()),
                            Text(dict[index]["product_id"].toString()),
                          ],
                        ),
                      );
                    },
                    itemCount: dict.length),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Winners",
                style: TextStyle(fontSize: 25),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                            "http://kalyanmobile.com/CMS_STAGING/images/userimg/1505111914_MjEyODUwNDI3MTQ5NjIyNDA3OA.png"),
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                            "http://kalyanmobile.com/CMS_STAGING/images/userimg/1505111914_MjEyODUwNDI3MTQ5NjIyNDA3OA.png"),
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                            "http://kalyanmobile.com/CMS_STAGING/images/userimg/1505111914_MjEyODUwNDI3MTQ5NjIyNDA3OA.png"),
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                            "http://kalyanmobile.com/CMS_STAGING/images/userimg/1505111914_MjEyODUwNDI3MTQ5NjIyNDA3OA.png"),
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Brands",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20,),
              Container(
                height: 100,
                width: double.infinity,
                child: ListView.builder(itemBuilder: (context,index){
                  return Row(children: [
                    Image.network(branddic[index]["brand_image_path"].toString()
                  ,
                  fit: BoxFit.fill,
                ),
                  ],);
                })
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(children: [Image.network(
                //   "http://kalyanmobile.com/CMS_STAGING/images/brandimg/small/anokhi_brand_thumb.png",
                //   fit: BoxFit.fill,
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Image.network(
                //   "http://kalyanmobile.com/CMS_STAGING/images/brandimg/small/mudra_brand_thumb.png",
                //   fit: BoxFit.fill,
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Image.network(
                //     "http://kalyanmobile.com/CMS_STAGING/images/brandimg/small/hera_brand_thumb.png"),
                // SizedBox(
                //   width: 20,
                // ),
                // Image.network(
                //   "http://kalyanmobile.com/CMS_STAGING/images/brandimg/small/ziah_brand_thumb.png",
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Image.network(
                //   "http://kalyanmobile.com/CMS_STAGING/images/brandimg/small/sankalp_brand_thumb.png",
                // )],),
                // ),
              ),
            ],
          ),
        ),
      ),

      // Container(child: ListView.builder(
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(dict[index]["title"].toString()),
      //         subtitle: Text(dict[index]["product_name"].toString()),

      //         // subtitle: Column(
      //         //   mainAxisAlignment: MainAxisAlignment.start,
      //         //   crossAxisAlignment: CrossAxisAlignment.start,
      //         //   children: [
      //         //     Text(secondlist[index]['city'].toString()),
      //         //     Text(secondlist[index]['address'].toString()),
      //         //   ],
      //         // ),

      //         // subtitle: Column(children: [
      //         //   for (var i = 0; i < cityDict[stateArr[index]].toString().split(",").length; i++)
      //         //   Text(cityDict[stateArr[index]].toString().split(",")[i])

      //         // ],),
      //       );
      //     },
      //     itemCount: dict.length,
      //   ),),
    );
  }
}