import 'package:flutter/material.dart';
import 'package:complete_quizapp/homepage.dart';
import 'dart:async';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        CircleAvatar(
        backgroundImage:AssetImage('images/quiz.png') ,
        backgroundColor: Colors.white,
        radius: 100.0,
      ),
      Text(
        'Qurat-Ul-Ain Sajid',
        style: TextStyle(
          fontFamily: 'Pacifico',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,

        ),
      ),
      Text(
        'CIIT/FA17-BCS-075/VHR',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          letterSpacing: 4.0,

        ),
      ),
    ],
    ),
      ),
    );
  }
}