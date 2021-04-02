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
  int image=1;
  @override
  Widget build(BuildContext context){
    var image=5;
    return
      Center(
        child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    print('Dice1');
                  },
        child: Image.asset('images/dice$image.png'))
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

