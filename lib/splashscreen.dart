import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mindful/auth.dart';
import 'package:page_transition/page_transition.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: Auth(),
              type: PageTransitionType.fade,
            )));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 150,
        ),
        Container(
          child: Lottie.asset('animations/splash.json'),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Mind",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[300])),
          TextSpan(
              text: "ful",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.teal[600]))
        ]))
      ]),
    );
  }
}
