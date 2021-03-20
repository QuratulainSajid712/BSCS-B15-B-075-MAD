import 'package:flutter/material.dart';

void main() {
  runApp(profilepage());
}

class profilepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text(
            'Profile',style: TextStyle(fontSize:15.0,color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xFF80DEEA),
                  Color(0xFFE0F7FA),
                  Color(0xFF26C6DA),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(),

        body:  SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 900,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/1.jpg'),
                          fit: BoxFit.fill
                      )
                  ),

                  child: Stack(
                    children: <Widget>[
                      Container(
                        height:210.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/pic3.png',),
                                fit: BoxFit.fill
                            )
                        ),

                      ),

                      Positioned(
                        left: 30,
                        top: 50,
                        child: Container(
                          height: 550,
                          width: 400,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],

                          ),
                          child: Column( children:[
                            Container(height:230.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/pic5.jpg',),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),

                          ],
                          ),


                        ),

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

