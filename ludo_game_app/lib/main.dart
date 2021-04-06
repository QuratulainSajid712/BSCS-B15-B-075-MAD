import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Ludo Game'),
        backgroundColor: Colors.tealAccent,
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
 int  left_image=1;
 int  left_image1=1;
 int right_image=1;
 int right_image1=1;
  @override
  Widget build(BuildContext context) {
  return  Center(
        child: Column(
            children: [
              Text('Dice_1: ' , style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Dice_2: '),
              Text('Dice_3: '),
              Text('Dice_4: '),
              SizedBox(height: 10,),
              Row(
                children: [Expanded(
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
                  ),],
              ),
SizedBox(height: 10,),
Row(children: [  Expanded(
    child: FlatButton(
        onPressed: () {
          setState(() {
            left_image1 = Random().nextInt(6)+1;
          });
          print('Dice3_Value$left_image1');
        },
        child: Image.asset('images/dice$left_image1.png'))
),
  Expanded(
      child: FlatButton(
          onPressed: () {
            setState(() {
              right_image1 =Random().nextInt(6)+1;
            });
            print('Dice4_Value$right_image1');
          },
          child: Image.asset('images/dice$right_image1.png'))
  ),],)

        ],
        ),
  );
  }
}


