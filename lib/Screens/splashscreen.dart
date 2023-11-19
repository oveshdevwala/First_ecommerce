import 'dart:async';

import 'package:ecommerce/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          PageTransition(
              child: HomeScreen(), type: PageTransitionType.rightToLeft));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: Center(child: Lottie.asset('assets/lottie/loadingbar.json')),
    );
  }
}
