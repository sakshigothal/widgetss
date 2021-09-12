// import 'dart:html';
// import 'dart:io';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

class CameraGalleryExample extends StatefulWidget {
  const CameraGalleryExample({Key? key}) : super(key: key);

  @override
  _CameraGalleryExampleState createState() => _CameraGalleryExampleState();
}

class _CameraGalleryExampleState extends State<CameraGalleryExample> {
  Media? m;
  Media? selectedimage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (selectedimage != null) ...[
                // Image.asset(selectedimage!.path),
                Image.file(File(selectedimage!.path)),
              ],
              ElevatedButton(
                child: Text("Camera"),
                onPressed: () async {
                  List<Media>? selectedimageArr =
                      await ImagesPicker.openCamera();
                  parseSelectedImage(selectedimageArr);
                },
              ),
              ElevatedButton(
                child: Text("Gallery"),
                onPressed: () async {
                  List<Media>? selectedimageArr = await ImagesPicker.pick(
                    count: 3,
                    maxSize: 100,
                  );
                  // pickType: PickType.video);

                  // if (selectedimageArr != null && selectedimageArr.length > 0) {
                  //   print("selected image $selectedimageArr");
                  //   m = selectedimageArr[0];
                  //   print("image path ${m?.path}");
                  //   setState(() {
                  //     selectedimage = m!;
                  //   });
                  //   // showimage();
                  // }
                  parseSelectedImage(selectedimageArr);
                },
              ),
              GestureDetector(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                onVerticalDragStart: (temp) {
                  print("onVerticalDragDown");
                },
              )
              // Image.asset("${m?.path}")
            ],
          ),
        ),
      ),
    );
  }

  // Widget showimage() {
  //   return Image.asset("${m?.path}");
  // }

  parseSelectedImage(List<Media>? selectedimageArr) {
    if (selectedimageArr != null && selectedimageArr.length > 0) {
      Media m = selectedimageArr[0];
      setState(() {
        selectedimage = m;
      });
      print("${m.path}");
    }
  }
}
