import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: new FlatButton(
              color: Colors.blue,
              onPressed: (){
                final play=AudioCache();
                play.play('note1.wav');
                },
              child: Text('Play'),
          ),

          ),
        ),
      ),
    );
  }
}


