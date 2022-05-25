import 'dart:async';

import 'package:agora_flutter/main.dart';
import 'package:agora_flutter/pages/HomePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(SplashScreen());
// }

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FadeIn();
}

class FadeIn extends State<SplashScreen> {
  Timer? timer;
  FlutterLogoStyle logoStyle = FlutterLogoStyle.markOnly;
  // FadeIn() {
  //   timer = Timer(const Duration(seconds: 2), () {
  //     setState(() {
  //       logoStyle = FlutterLogoStyle.horizontal;
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    // Timer(
    //     Duration(seconds: 5),
    //         () =>
    //         Navigator.of(context).pushReplacement(MaterialPageRoute(
    //             builder: (BuildContext context) => MyHomePage())));
    return MaterialApp(
      home: Scaffold(
        body: AnimatedSplashScreen(
          splashIconSize: 250,
          backgroundColor: Colors.white,
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset("assets/konnect.png",
          ),
        ),
      ),
    );

  }
}