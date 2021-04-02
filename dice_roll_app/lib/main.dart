import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.amberAccent,
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage>{
  int left_image = 1;
  int right_image = 1;
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Row(
          children: [
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        left_image = 5;
                      });
                      print('Dice1_Value$left_image');
                    },
                    child: Image.asset('images/dice$left_image.png'))
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        right_image=4;
                      });
                      print('Dice2_Value$right_image');
                    },
                    child: Image.asset('images/dice$right_image.png'))
            ),
          ],
        ),
      );
  }
}

