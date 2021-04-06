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
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dice_1 Score: ' , style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Dice_2 Score: ', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Dice_3 Score: ', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Dice_4 Score: ', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            left_image = Random().nextInt(6)+1;
                          });
                          print('Dice1_Value$left_image');
                        },
                        child: Image.asset('images/dice$left_image.png', width: 200, height: 150,))
                ),
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              right_image=Random().nextInt(6)+1;
                            });
                            print('Dice2_Value$right_image');
                          },
                          child: Image.asset('images/dice$right_image.png', width: 200, height: 150,))
                  ),],
              ),
              SizedBox(height: 10,),
              Row(
        children: [
          Expanded(
          child: FlatButton(
           onPressed: () {
          setState(() {
            left_image1 = Random().nextInt(6)+1;
          });
          print('Dice3_Value$left_image1',);
        },
        child: Image.asset('images/dice$left_image1.png', width: 200, height: 150,))
),
       Expanded(
      child: FlatButton(
          onPressed: () {
            setState(() {
              right_image1 =Random().nextInt(6)+1;
            });
            print('Dice4_Value$right_image1');
          },
          child: Image.asset('images/dice$right_image1.png', width: 200, height: 150,))
  ),
        ],
      ),
              SizedBox(height: 20,),
              RaisedButton(child: Text('Reset'),onPressed: (){}),

        ],
        ),
  );
  }
}


