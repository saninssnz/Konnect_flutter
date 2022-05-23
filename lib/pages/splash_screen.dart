import 'dart:async';

import 'package:agora_flutter/pages/HomePage.dart';
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
  FadeIn() {
    timer = Timer(const Duration(seconds: 2), () {
      setState(() {
        logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => MyHomePage())));
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 200.0,
            style: logoStyle,
          ),
        ),
      ),
    );

  }
}