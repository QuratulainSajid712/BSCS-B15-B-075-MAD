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

class _LudoPageState extends State<LudoPage> {
  int total=0;
  int winner=0;
  int winn=0;
  int left_image = 1;
  int right_image = 1;
  int left_image1 = 1;
  int right_image1 = 1;
  int totaldice1 = 0;
  int totaldice2 = 0;
  int totaldice3 = 0;
  int totaldice4 = 0;
  bool dice1out = false;
  bool dice2out = false;
  bool dice3out = false;
  bool dice4out = false;
  int limit = 10;
  int dice1count = 0;
  int dice2count = 0;
  int dice3count = 0;
  int dice4count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Total Clicks: $limit', textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text('Dice_1 Score : $totaldice1 ', style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Dice_2 Score : $totaldice2 ', style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Dice_3 Score : $totaldice3', style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Dice_4 Score : $totaldice4', style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          firstdice();
                        });
                        print('Dice1_Value$left_image');
                      },
                      child: Image.asset(
                        'images/dice$left_image.png', width: 200, height: 150,))
              ),
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          seconddice();
                        });
                        print('Dice2_Value$right_image');
                      },
                      child: Image.asset(
                        'images/dice$right_image.png', width: 200,
                        height: 150,))
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          thirddice();
                        });
                        print('Dice3_Value$left_image1',);
                      },
                      child: Image.asset(
                        'images/dice$left_image1.png', width: 200,
                        height: 150,))
              ),
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          fourthdice();
                        });
                        print('Dice4_Value$right_image1');
                      },
                      child: Image.asset(
                        'images/dice$right_image1.png', width: 200,
                        height: 150,))
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
                  total = 0;
                  winner = 0;
                  winn = 0;
                  totaldice1 = 0;
                  totaldice2 = 0;
                  totaldice3 = 0;
                  totaldice4 = 0;
                  dice1out = false;
                  dice2out = false;
                  dice3out = false;
                  dice4out = false;
                  left_image1 = 1;
                  left_image = 1;
                  right_image1 = 1;
                  right_image = 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void firstdice() {
    if (dice1count < 10) {
      left_image = Random().nextInt(6) + 1;
      totaldice1 = totaldice1 + left_image;
      dice1count = dice1count + 1;
      total = total + left_image;
    };
    if (totaldice1 > totaldice2 &&
        totaldice1 > totaldice3 &&
        totaldice1 > totaldice4) {
      winner = totaldice1;
      winn = 1;
    } else if (totaldice2 > totaldice1 &&
        totaldice2 > totaldice3 &&
        totaldice2 > totaldice4) {
      winner = totaldice2;
      winn = 2;
    } else if (totaldice3 > totaldice1 &&
        totaldice3 > totaldice2 &&
        totaldice3 > totaldice4) {
      winner = totaldice3;
      winn = 3;
    } else {
      winner = totaldice4;
      winn = 4;
    }
    ;
    if (dice2count >= dice1count &&
        dice3count >= dice1count &&
        dice4count >= dice1count) {
      if (limit > 0) {
        limit = limit - 1;
      }
    };
    if (dice1count == 10 &&
        dice2count == 10 &&
        dice3count == 10 &&
        dice4count == 10) {
      showResultDialog();
    }
  }

  void seconddice() {
    if (dice2count < 10) {
      right_image = Random().nextInt(6) + 1;
      totaldice2 = totaldice2 + right_image;
      dice2count = dice2count + 1;
      total = total + right_image;
    }
    ;
    if (totaldice1 > totaldice2 &&
        totaldice1 > totaldice3 &&
        totaldice1 > totaldice4) {
      winner = totaldice1;
      winn = 1;
    } else if (totaldice2 > totaldice1 &&
        totaldice2 > totaldice3 &&
        totaldice2 > totaldice4) {
      winner = totaldice2;
      winn = 2;
    } else if (totaldice3 > totaldice1 &&
        totaldice3 > totaldice2 &&
        totaldice3 > totaldice4) {
      winner = totaldice3;
      winn = 3;
    } else {
      winner = totaldice4;
      winn = 4;
    };
    if (dice1count >= dice2count &&
        dice3count >= dice2count &&
        dice4count >= dice2count) {
      if (limit > 0) {
        limit = limit - 1;
      };
      if (dice1count == 10 &&
          dice2count == 10 &&
          dice3count == 10 &&
          dice4count == 10) {
        showResultDialog();
      }
      }
}
    void thirddice() {
      if (left_image1 > 6) {
        print('Out');
      }
      else {
        totaldice3 = totaldice3 + left_image1;
      }
    }
    void fourthdice() {
      if (right_image1 > 6) {
        print('Out');
      }
      else {
        totaldice4 = totaldice4 + right_image1;
      }
    }
  void showDiceOutDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('You are out!!!'),
            content: Image.asset('images/out.png'),
            actions: <Widget>[
              FlatButton(
                child: Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
    void showResultDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Winner: Dice $winn'),
              content: Text('Points: $winner points'),
              actions: <Widget>[
                FlatButton(
                  child: Text('ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });

    }
  }


