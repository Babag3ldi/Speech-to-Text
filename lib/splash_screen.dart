import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'speech.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SpeechSampleApp())));
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Height * 10,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: Height * 40,
              width: Width * 40,
            ),
            const Text(
              "Speech",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            SizedBox(
              height: Height * 2,
            ),
            SizedBox(
                width: Width * 80,
                child: const Center(
                    child: Text(
                  "to Text",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ))),
            SizedBox(
              height: Height * 12,
            ),
            const SpinKitPulse(
              color: Colors.indigo,
              size: 45,
            )
          ]),
    );
  }
}
