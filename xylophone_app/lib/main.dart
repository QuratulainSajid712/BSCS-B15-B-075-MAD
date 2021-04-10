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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children:[
             Expanded(child:   FlatButton(
               color: Colors.blue,
               onPressed: (){
                 playsound(1);
               },
             ),),
        Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: (){
                 playsound(2);
                },
              ),),
        Expanded(child: FlatButton(
                color: Colors.red,
                onPressed: (){
                  playsound(3);
                },
              ),),
              Expanded(child: FlatButton(
                color: Colors.orange,
                onPressed: (){
                 playsound(4);
                },
              ),),
             Expanded(child: FlatButton(
                color: Colors.purple,
                onPressed: (){
                  playsound(5);
                },

              ),),
              Expanded(child: FlatButton(
                color: Colors.lightGreenAccent,
                onPressed: (){
                playsound(6);
                },
              ),),
              Expanded(child: FlatButton(
                color: Colors.pinkAccent,
                onPressed: (){
                 playsound(7);
                },
              ),),
            ],

          ),
        ),
      ),
    );
  }
}


