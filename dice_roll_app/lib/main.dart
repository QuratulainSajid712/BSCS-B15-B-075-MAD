import 'package:flutter/material.dart';

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
class DicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
      Center(
        child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    print('Dice1');
                  },
        child: Image.asset('images/dice1.png'))
              ),
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    print('Dice2');
                  },
                  child: Image.asset('images/dice2.png'))
          ),
        ],
    ),
      );
  }
}

