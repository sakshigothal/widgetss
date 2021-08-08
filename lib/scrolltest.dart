import 'package:flutter/material.dart';

class ScrollTest extends StatefulWidget {
  const ScrollTest({Key? key}) : super(key: key);

  @override
  _ScrollTestState createState() => _ScrollTestState();
}

class _ScrollTestState extends State<ScrollTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(height: 200,width: 100,color: Colors.grey,),
            Container(height: 200,width: 100,color: Colors.green),
            Container(height: 200,width: 100,color: Colors.indigo),
            Container(height: 200,width: 100,color: Colors.lightBlue,),
            Container(height: 200,width: 100,color: Colors.orange,),
            Container(height: 200,width: 100,color: Colors.purple,),
          ],
        ),
      ),
    );
  }
  showcard(Color col){
return Container(height: 200,color:col,);
  }
}
