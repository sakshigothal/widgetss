import 'package:flutter/material.dart';
//import 'package:tiktok/addition.dart';

//import 'swiggy.dart';
//import 'package:tiktok/oddeven.dart';
//import 'package:tiktok/overlapping.dart';


class TikTok extends StatefulWidget {
  const TikTok({Key? key}) : super(key: key);

  @override
  _TikTokState createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> {
  PageController pg = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      controller: pg,
      children: [
        Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/img1.jpg",
                fit: BoxFit.fill,
              ),
              constantt()
            ],
          ),
        ),
        Container(
          child: Stack(
            fit: StackFit.expand,
            children:[ Image.asset(
              "assets/img2.jpg",
              fit: BoxFit.fill,
            ),
            constantt()
            ]
          ),
        ),
        Container(
          child: Stack(
            fit: StackFit.expand,
            children: [Image.asset(
              "assets/img3.jpg",
              fit: BoxFit.fill,
            ),
            constantt()
            ]
          ),
        ),
        Container(
          child: Stack(
            fit: StackFit.expand,
            children: [Image.asset(
              "assets/img4.jpg",
              fit: BoxFit.fill,
            ),
            constantt()
            ]
          ),
        ),
        Container(
          child: Stack(
            fit: StackFit.expand,
            children: [Image.asset(
              "assets/img5.jpg",
              fit: BoxFit.fill,
            ),
            constantt()
            ]
          ),
        )
      ],
    )
        // body: Container(
        //   height: double.infinity,
        //   width: double.infinity,
        //   //color: Colors.cyan,
        //   child: PageView(
        //     scrollDirection: Axis.vertical,
        //     controller: pg,
        //     children: [
        //       onboardigcard(Image.asset(
        //         "assets/img1.jpg",
        //         fit: BoxFit.fill,
        //         height: double.infinity,
        //       )),
        //       onboardigcard(Image.asset(
        //         "assets/img5.jpg",
        //         fit: BoxFit.fill,
        //         height: double.infinity,
        //       )),
        //       onboardigcard(Image.asset(
        //         "assets/img3.jpg",
        //         fit: BoxFit.fill,
        //         height: double.infinity,
        //       )),
        //       onboardigcard(Image.asset(
        //         "assets/img4.jpg",
        //         fit: BoxFit.fill,
        //         height: double.infinity,
        //       )),

        );
  }

  Widget onboardigcard(Image img) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/img1.jpg", fit: BoxFit.fill),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget constantt() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.thumb_up,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.message_outlined,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.reply_rounded,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.music_note,
            ),
          ),
          SizedBox(
            height: 368,
          ),
          Container(
            height: 50,
            width: 400,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  child: Icon(Icons.home),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  child: Icon(Icons.search),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  child: Icon(Icons.video_call),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  child: Icon(Icons.contacts),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}