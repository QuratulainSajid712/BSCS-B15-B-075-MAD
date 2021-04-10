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
          child: Column(
            children:[
              FlatButton(
              color: Colors.blue,
              onPressed: (){
                final play=AudioCache();
                play.play('note1.wav');
                },
              child: Text('Play'),
          ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note2.wav');
                },
                child: Text('Play'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note3.wav');
                },
                child: Text('Play'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note4.wav');
                },
                child: Text('Play'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note5.wav');
                },
                child: Text('Play'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note6.wav');
                },
                child: Text('Play'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final play=AudioCache();
                  play.play('note7.wav');
                },
                child: Text('Play'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


