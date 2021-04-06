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
int number =1;
 int totaldice1=0;
 int totaldice2=0;
 int totaldice3=0;
 int totaldice4=0;
 bool dice1out=false;
 bool dice2out=false;
 bool dice3out=false;
 bool dice4out=false;
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
                            number = Random().nextInt(6)+1;
                            firstdice();
                          });
                          print('Dice1_Value$number');
                        },
                        child: Image.asset('images/dice$number.png', width: 200, height: 150,))
                ),
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              number=Random().nextInt(6)+1;
                              seconddice();
                            });
                            print('Dice2_Value$number');
                          },
                          child: Image.asset('images/dice$number.png', width: 200, height: 150,))
                  ),],
              ),
              SizedBox(height: 10,),
              Row(
        children: [
              Expanded(
          child: FlatButton(
           onPressed: () {
          setState(() {
            number = Random().nextInt(6)+1;
            thirddice();
          });
          print('Dice3_Value$number',);
        },
        child: Image.asset('images/dice$number.png', width: 200, height: 150,))
),
              Expanded(
      child: FlatButton(
          onPressed: () {
            setState(() {
              number =Random().nextInt(6)+1;
              fourthdice();
            });
            print('Dice4_Value$number');
          },
          child: Image.asset('images/dice$number.png', width: 200, height: 150,))
  ),
        ],
      ),
              SizedBox(height: 20,),
              RaisedButton(child: Text('Reset'),onPressed: (){}),

        ],
        ),
  );
  }
  void firstdice(){
    if(number>6){
      print('Out');
      dice1out=true;
    }
    else{
      totaldice1= totaldice1 + number;
    }
  }
 void seconddice(){
   if(number>6){
     if(totaldice1==totaldice2 && totaldice2==totaldice3 && totaldice3==totaldice4) {
       print('Same Score of All Dices');
     }
     else {
       print('Dice 1 Wins');
     }
     
     print('Out');
   }
   else{
     totaldice2= totaldice2 + number;
   }
 }
 void thirddice(){
   if(number>6){
     print('Out');
   }
   else{
     totaldice3= totaldice3 + number;
   }
 }
 void fourthdice(){
   if(number>6){
     print('Out');

   }
   else{
     totaldice4= totaldice4 + number;
   }
 }
}


