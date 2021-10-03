import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:widgetss/notificationtest.dart';
//import 'package:widgetss/listviewexample.dart';
import 'package:widgetss/onbording.dart';
import 'package:widgetss/razorpayexamle.dart';
import 'package:widgetss/realtimeExample.dart';

import 'apitest.dart';
import 'banner.dart';
import 'cameragalleryexample.dart';
import 'citylisting.dart';
import 'contactus.dart';
import 'firebasewithlogin.dart';
import 'kalyan.dart';
import 'kalyanapi.dart';
import 'keyboardexample.dart';
import 'parentpage.dart';
import 'splash.dart';
import 'splashpage.dart';
import 'webviewpage.dart';
//import 'package:widgetss/addition.dart';
//import 'package:widgetss/login.dart';

//import 'practice.dart';
//import 'package:widgetss/overlapping.dart';
//import 'package:widgetss/oddeven.dart';

//import 'swiggy.dart';
//import 'tiktok.dart';
//import 'package:widgetss/dicegame.dart';

//import 'pageexample.dart';
//import 'scrolltest.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
late AndroidNotificationChannel channel;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    sound: true,
    badge: true,
    alert: true,
  );
  runApp(
    MaterialApp(
      // theme: ThemeData(
      //   elevatedButtonTheme:ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: Colors.red))
      // ),
      home: NotificationTest(),
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  String msg = "";
  var rem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Form",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Name here",
                        prefixIcon: Icon(Icons.verified_user),
                        // suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password Here",
                        prefixIcon: Icon(Icons.verified_user),
                        // suffixIcon: Icon(Icons.verified_user_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // print("press");
                        // if (username.text.length > 6) {
                        //   print("hey");
                        //   setState(() {
                        //     msg = "Enter Username";
                        //   });
                        // } else if (pass.text.length > 6) {
                        //   setState(() {
                        //     msg = "Enter Password";
                        //   });
                        // } else {
                        //   setState(() {
                        //     msg = "WELCOME ${username.text}";
                        //   });
                        // }
                      },
                      child: Text("Hit Me!"),
                    ),
                    // Checkbox(
                    //     value: rem,
                    //     onChanged: (val) {
                    //       setState(() {
                    //         this.rem = rem;
                    //       });
                    //     }),
                  ],
                ),
              ),
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}
