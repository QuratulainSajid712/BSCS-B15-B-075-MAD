import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tictactoe_app_sessional2/homepage.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:AnimatedSplashScreen(
          splash: Image.asset(
              'images/tic4.png',
              width: 250,
              height: 400,
              fit:BoxFit.fill  ),
          nextScreen: Homepage(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.lightBlueAccent,
          duration: 6000,
        ),
      ),
    );
  }
}