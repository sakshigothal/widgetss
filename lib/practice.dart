import 'package:flutter/material.dart';

class TryCatchPage extends StatefulWidget {
  const TryCatchPage({Key? key}) : super(key: key);

  @override
  _TryCatchPageState createState() => _TryCatchPageState();
}

class _TryCatchPageState extends State<TryCatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.videocam_rounded,
                  size: 45,
                ),
                Text(
                  "Best Practical",
                  style: TextStyle(fontSize: 45),
                ),
              ],
            ),
            Text(
              "Courses With Live",
              style: TextStyle(fontSize: 45),
            ),
            Text("Projects", style: TextStyle(fontSize: 45)),
            SizedBox(
              height: 20,
            ),
            Text(
                "Have a look at the video on the right. TryCatch Classes has a record of\n 100% positive reviews from our students. View our advanced customized\n courses and short term courses in Mumbai.\n"),
            SizedBox(
              height: 20,
            ),
            
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                    child: Text(
                      "BROWSE ALL\nCOURCES",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[600],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                    child: Text(
                      "10th/12th \n COURCES",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[600]),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                    child: Text(
                      "ENGINEERING\nCOURCES",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                 Column(
                   
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    "https://media4.giphy.com/media/26tn33aiTi1jkl6H6/200.gif"),
              ],
            ),
              ],
              
            ),
           
          ],
          
        ),
        
      ),
    );
  }
}
