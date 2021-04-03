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
      body: LudoPage(),
    ),
  ));
}
class LudoPage extends StatefulWidget {
  @override
  _LudoPageState createState() => _LudoPageState();
}

class _LudoPageState extends State<LudoPage>{
  left_image=1;
  right_image=1;
  @override
  Widget build(BuildContext context) {
    Center(
        child: Row(
            children: [
        Expanded(
        child: FlatButton(
        onPressed: () {
    setState(() {
    left_image = Random().nextInt(6)+1;
    });
    print('Dice1_Value$left_image');
    },
        child: Image.asset('images/dice$left_image.png'))
    ),
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          right_image=Random().nextInt(6)+1;
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

