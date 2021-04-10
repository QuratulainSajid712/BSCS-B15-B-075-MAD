import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
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


