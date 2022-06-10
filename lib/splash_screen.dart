import 'dart:async';


import 'package:doctor/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 79, 79),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 150,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 240, 153, 153)
              ),
            )
          ],
        ),
      ),
    );
  }
}