import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

String dropdownColor = 'Select Color';

String dropdownColor1 = 'Select Color';

String dropdownColor2 = 'Select Color';

String dropdownColor3 = 'Select Color';

String dropdownColor4 = 'Select Color';

String dropdownColor5 = 'Select Color';

String dropdownColor6 = 'Select Color';

String dropdownColor7 = 'Select Color';
int s1, s2, s3, s4, s5, s6, s7;
Color c1, c2, c3, c4, c5, c6, c7;
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => customizedxylophone(),
      '/second': (context) => XylophoneApp(),
    },
  ),);
}

customizedxylophone() {
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber){
    final play=AudioCache();
    play.play('note$soundnumber.wav');
  }
  Expanded CreateButon(Color color, int soundnumber){
    return Expanded(
      child:   FlatButton(
      color: color,
      onPressed: (){
        playsound(soundnumber);
      },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              CreateButon(Colors.blue, 1),
              CreateButon(Colors.redAccent, 2),
              CreateButon(Colors.lightGreenAccent, 3),
              CreateButon(Colors.orangeAccent, 4),
              CreateButon(Colors.yellow, 5),
              CreateButon(Colors.purpleAccent, 6),
              CreateButon(Colors.greenAccent, 7),
            ],

          ),
        ),
      ),
    );
  }
}


