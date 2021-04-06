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
int left_image=1;
int right_image=1;
int left_image1=1;
int right_image1=1;
 int totaldice1=0;
 int totaldice2=0;
 int totaldice3=0;
 int totaldice4=0;
 bool dice1out=false;
 bool dice2out=false;
 bool dice3out=false;
 bool dice4out=false;
 int totalclicks=10;
  @override
  Widget build(BuildContext context) {
  return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total Clicks: 10',textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('Dice_1 Score : $totaldice1 ' , style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Dice_2 Score : $totaldice2 ', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Dice_3 Score : $totaldice3', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Dice_4 Score : $totaldice4', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            left_image = Random().nextInt(6)+1;
                            firstdice();
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
                              seconddice();
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
            thirddice();
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
              fourthdice();
            });
            print('Dice4_Value$right_image1');
          },
          child: Image.asset('images/dice$right_image1.png', width: 200, height: 150,))
  ),
        ],
      ),
              SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text('Reset'),
        onPressed: () {
          setState(() {
            totaldice1 = 0;
            totaldice2= 0;
            totaldice3= 0;
            totaldice4= 0;
            dice1out = false;
            dice2out=false;
            dice3out=false;
            dice4out=false;
            left_image1 = 1;
            left_image=1;
            right_image1=1;
            right_image=1;
          });
        },
      ),
    ),
        ],
        ),
  );
  }
  
  void firstdice(){

  if (totalclicks > 10) {
    print('Out');
    dice1out = true;
  }
  else {
    totaldice1 = totaldice1 + left_image;
  }
  }
 void seconddice(){
   if(right_image>6){
     right_image = 1;
     if (totaldice1 == totaldice2) {
       showResultDialog('Match Tied');
     } else {
       showResultDialog('First Player Wins');
     }
   } else {
     totalSecondPlayer = totalSecondPlayer + diceNumber;
     if (totalSecondPlayer > totalFirstPlayer) {
       showResultDialog('Second Player Wins');
     }
     print('Out');
   }
   else{
     totaldice2= totaldice2 + right_image ;
   }
 }
 void thirddice(){
   if(left_image1>6){
     print('Out');
   }
   else{
     totaldice3= totaldice3 + left_image1;
   }
 }
 void fourthdice(){
   if(right_image1>6){
     print('Out');

   }
   else{
     totaldice4= totaldice4 + right_image1;
   }
 }
}


