import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  callApi() async{
    Map<String, dynamic> bodyData = {
      "country": "india",
      "request": "contact_us",
      "device_type": "android"
    };
    var response = await http.post(
      Uri.parse("https://www.kalyanmobile.com/apiv1_staging/contact_us.php"),
      body: bodyData,
    );
    print("Resp -->${response.body}");
  }
}
