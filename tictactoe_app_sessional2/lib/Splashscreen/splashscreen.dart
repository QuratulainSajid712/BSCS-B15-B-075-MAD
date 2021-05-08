import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AnimatedSplashScreen(
        splash:Image.asset('images/tictactoe.jpg'),
      ),
    );
  }
}