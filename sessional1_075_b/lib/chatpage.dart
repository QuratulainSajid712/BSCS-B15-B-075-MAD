import 'package:flutter/material.dart';

void main() {
  runApp(homepage());
}
class homepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text(
            'Hi, Andrea',style: TextStyle(fontSize:15.0,color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
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
                        top: 20,
                        left: 100,
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('1 New Message',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,)),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 80,
                        width: 80,
                        height:150.0,
                        child:  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/6.png',),
                              )
                          ),
                        ),
                      ),

                      Container(
                        height: 80,
                        margin: EdgeInsets.only(left: 25, top: 25, right: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 113,
                                height: 25,
                                margin: EdgeInsets.only(top: 55),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 8,
                                      margin: EdgeInsets.only(left: 7),
                                      child: Image.asset(
                                        "images/5.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 83,
                                        margin: EdgeInsets.only(top: 6),
                                        child: Text(
                                          "RECENT CHATS",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            letterSpacing: 1,
                                          ),
                                        ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

