import 'package:flutter/material.dart';

class SwiggyUI extends StatefulWidget {
  const SwiggyUI({Key? key}) : super(key: key);

  @override
  _SwiggyUIState createState() => _SwiggyUIState();
}

class _SwiggyUIState extends State<SwiggyUI> {
  PageController pg = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(
          height: 700,
          width: 400,
          color: Colors.orange[300],
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/photo4.jpg",
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Order from a wide range of restaurants",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            onboarding(),
          ]),
        ),
        Container(
          height: 700,
          width: 400,
          color: Colors.orange[300],
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/photo2.jpg",
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "With a wide collection of           cuisines",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              onboarding(),
            ],
          ),
        ),
        Container(
          height: 700,
          width: 400,
          color: Colors.orange[300],
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/photo3.jpg",
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Delivered quickly to your door         step",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              onboarding(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget onboarding() {
    return Column(
      children: [
        Text("Ready to order from top restaurants?"),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 110,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("SET DELIVERY LOCATION"),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 115,
            ),
            Text(
              "Have an Account? ",
            ),
            Text(
              "Login",style:TextStyle(fontWeight: FontWeight.bold)
            )
          ],
        )
      ],
    );
  }
}
