import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tictactoe_app_sessional2/homepage.dart';

import '../AppColors.dart';

/*class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:AnimatedSplashScreen(
          splash: Image.asset(
              'images/tic4.png',
              width: 350,
              height: 450,
              scale: 0.8,
              fit:BoxFit.fitHeight  ),
          nextScreen: MainPage(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.lightBlueAccent,
          duration: 6000,
        ),
      ),
    );
  }
}*/
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAddToCartBtnBGColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/tic_tac_toe_loader_.gif',
              height: 120,
            ),
            Text(
              'TIC TAC TOE',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,

              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Qurat-Ul-Ain Sajid',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 20.0,

              ),
            ),
            Text(
              'CIIT/FA17-BCS-075/VHR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                letterSpacing: 4.0,

              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}


