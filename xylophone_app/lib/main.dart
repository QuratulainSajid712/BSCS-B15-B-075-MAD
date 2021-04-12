import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

String dropdownColor = 'Select Color';

String dropdownColor1 = 'Select Color';

String dropdownColor2 = 'Select Color';

String dropdownColor3 = 'Select Color';

String dropdownColor4 = 'Select Color';

String dropdownColor5 = 'Select Color';

String dropdownColor6 = 'Select Color';

String dropdownColor7 = 'Select Color';

Color c1, c2, c3, c4, c5, c6, c7;
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => customizedxylophone(),
      '/second': (context) => XylophoneApp(),
    },
  ),);
}
void playsound(int soundnumber){
  final play=AudioCache();
  play.play('note$soundnumber.wav');
}
Expanded CreateButton(Color color, int soundnumber){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playsound(soundnumber);
      },
    ),
  );
}
class customizedxylophone extends StatefulWidget {
  @override
  //const customizexylo({Key? key}) : super(key: key);
  _customizedxylophoneState createState() => _customizedxylophoneState();
}
class _customizedxylophoneState extends State<customizedxylophone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.red,
              title: Text(
                'Customization Panel',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '1st Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor = newValue;
                          if (dropdownColor == 'Blue') {
                            c1 = Colors.blue;
                          } else if (dropdownColor == 'Green') {
                            c1 = Colors.green;
                          } else if (dropdownColor == 'Red') {
                            c1 = Colors.red;
                          } else if (dropdownColor == 'YellowAccent') {
                            c1 = Colors.yellowAccent;
                          } else if (dropdownColor == 'deepOrange') {
                            c1 = Colors.deepOrange;
                          } else if (dropdownColor == 'teal') {
                            c1 = Colors.teal;
                          } else if (dropdownColor == 'black12') {
                            c1 = Colors.black12;
                          } else if (dropdownColor == 'Select Color') {
                            c1 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '2nd Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor1,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor1 = newValue;
                          if (dropdownColor1 == 'Blue') {
                            c2 = Colors.blue;
                          } else if (dropdownColor1 == 'Green') {
                            c2 = Colors.green;
                          } else if (dropdownColor1 == 'Red') {
                            c2 = Colors.red;
                          } else if (dropdownColor1 == 'YellowAccent') {
                            c2 = Colors.yellowAccent;
                          } else if (dropdownColor1 == 'deepOrange') {
                            c2 = Colors.deepOrange;
                          } else if (dropdownColor1 == 'teal') {
                            c2 = Colors.teal;
                          } else if (dropdownColor1 == 'black12') {
                            c2 = Colors.black12;
                          } else if (dropdownColor1 == 'Select Color') {
                            c2 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '3rd Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor2,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor2 = newValue;
                          if (dropdownColor2 == 'Blue') {
                            c3 = Colors.blue;
                          } else if (dropdownColor2 == 'Green') {
                            c3 = Colors.green;
                          } else if (dropdownColor2 == 'Red') {
                            c3 = Colors.red;
                          } else if (dropdownColor2 == 'YellowAccent') {
                            c3 = Colors.yellowAccent;
                          } else if (dropdownColor2 == 'deepOrange') {
                            c3 = Colors.deepOrange;
                          } else if (dropdownColor2 == 'teal') {
                            c3 = Colors.teal;
                          } else if (dropdownColor2 == 'black12') {
                            c3 = Colors.black12;
                          } else if (dropdownColor2 == 'Select Color') {
                            c3 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '4th Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor3,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor3 = newValue;
                          if (dropdownColor3 == 'Blue') {
                            c4 = Colors.blue;
                          } else if (dropdownColor3 == 'Green') {
                            c4 = Colors.green;
                          } else if (dropdownColor3 == 'Red') {
                            c4 = Colors.red;
                          } else if (dropdownColor3 == 'YellowAccent') {
                            c4 = Colors.yellowAccent;
                          } else if (dropdownColor3 == 'deepOrange') {
                            c4 = Colors.deepOrange;
                          } else if (dropdownColor3 == 'teal') {
                            c4 = Colors.teal;
                          } else if (dropdownColor3 == 'black12') {
                            c4 = Colors.black12;
                          } else if (dropdownColor3 == 'Select Color') {
                            c4 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '5th Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor4,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor4 = newValue;
                          if (dropdownColor4 == 'Blue') {
                            c5 = Colors.blue;
                          } else if (dropdownColor4 == 'Green') {
                            c5 = Colors.green;
                          } else if (dropdownColor4 == 'Red') {
                            c5 = Colors.red;
                          } else if (dropdownColor4 == 'YellowAccent') {
                            c5 = Colors.yellowAccent;
                          } else if (dropdownColor4 == 'deepOrange') {
                            c5 = Colors.deepOrange;
                          } else if (dropdownColor4 == 'teal') {
                            c5 = Colors.teal;
                          } else if (dropdownColor4 == 'black12') {
                            c5 = Colors.black12;
                          } else if (dropdownColor4 == 'Select Color') {
                            c5 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '6th Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor5,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor5 = newValue;
                          if (dropdownColor5 == 'Blue') {
                            c6 = Colors.blue;
                          } else if (dropdownColor5 == 'Green') {
                            c6 = Colors.green;
                          } else if (dropdownColor5 == 'Red') {
                            c6 = Colors.red;
                          } else if (dropdownColor5 == 'YellowAccent') {
                            c6 = Colors.yellowAccent;
                          } else if (dropdownColor5 == 'deepOrange') {
                            c6 = Colors.deepOrange;
                          } else if (dropdownColor5 == 'teal') {
                            c6 = Colors.teal;
                          } else if (dropdownColor5 == 'black12') {
                            c6 = Colors.black12;
                          } else if (dropdownColor5 == 'Select Color') {
                            c6 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '7th Button',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownColor6,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 15,
                      iconEnabledColor: Colors.white,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownColor6 = newValue;
                          if (dropdownColor6 == 'Blue') {
                            c7 = Colors.blue;
                          } else if (dropdownColor6 == 'Green') {
                            c7 = Colors.green;
                          } else if (dropdownColor6 == 'Red') {
                            c7 = Colors.red;
                          } else if (dropdownColor6 == 'YellowAccent') {
                            c7 = Colors.yellowAccent;
                          } else if (dropdownColor6 == 'deepOrange') {
                            c7 = Colors.deepOrange;
                          } else if (dropdownColor6 == 'teal') {
                            c7 = Colors.teal;
                          } else if (dropdownColor6 == 'black12') {
                            c7 = Colors.black12;
                          } else if (dropdownColor6 == 'Select Color') {
                            c7 = Colors.transparent;
                          }
                        });
                      },
                      items: <String>[
                        'Select Color',
                        'Blue',
                        'Green',
                        'Red',
                        'YellowAccent',
                        'deepOrange',
                        'teal',
                        'black12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text(
                      "Customize",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            )));
  }
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}
class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CreateButton(c1, 1),
                  CreateButton(c2, 2),
                  CreateButton(c3, 3),
                  CreateButton(c4, 4),
                  CreateButton(c5, 5),
                  CreateButton(c6, 6),
                  CreateButton(c7, 7),
                ]),
          ),
        ),
    );
  }
}



