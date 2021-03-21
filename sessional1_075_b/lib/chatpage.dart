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
                          left: 180,
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
                                      fontSize: 15,)),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 120,
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
                        Positioned(
                          top: 70,
                          left: 202,
                          width: 160,
                          height:180.0,
                          child:
                          Container(
                            width: 175,
                            margin: EdgeInsets.only(top: 10, right: 25, bottom: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Positioned(
                                  top: 25,
                                  left: 202,

                                  child: Container(
                                    width: 200,
                                    child: Text(
                                      "Hey! How are you? Did you see the latest…",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 5, 7, 6),
                                        fontFamily: "",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        height: 1.53333,
                                      ),
                                    ),
                                  ),
                                ),
                              ], ),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left:5,
                          child:Container(
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
                        ),
                        Positioned(
                          left: 10,
                          top: 270,
                          child: Container(
                            height: 400,
                            width: 430,
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children:[
                                            Icon(
                                              Icons.account_circle_outlined,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              "Ana Jacobson",
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                letterSpacing: 2.0,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text('I m on the way',
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black,
                                                letterSpacing: 2.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(height: 5, color: Colors.black,),
                                        Column(
                                          children:[
                                            Text('5 minutes ago',
                                                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color:Colors.red)),

                                          ],
                                        ),
                                      ],

                                    ),
                                  ),
                                  Divider(
                                    color: Color(0xFF80DEEA),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children:[
                                            Icon(
                                              Icons.account_circle,
                                              color: Colors.black,
                                            ),
                                            Text('Micheal Shelton',
                                                style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                                                    fontSize: 15.0,letterSpacing: 2.0)),
                                            SizedBox(height: 10,),
                                            Text('Video Chat',style: TextStyle(fontSize: 10, letterSpacing: 1),),
                                          ],
                                        ),
                                        Divider(height: 5, color: Colors.black,),
                                        Column(
                                          children:[
                                            Text('2 days ago',
                                                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color:Colors.red)),

                                          ],
                                        ),
                                      ],

                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Divider(
                                    color: Color(0xFF80DEEA),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: <Color>[
                                          Color(0xFF26C6DA),
                                          Color(0xFFE0F7FA),
                                          Color(0xFF80DEEA),
                                        ],
                                      ),
                                      boxShadow:[
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children:[
                                            Icon(
                                              Icons.account_circle_outlined,
                                              color: Colors.black,
                                            ),
                                            Text('Ammy',
                                                style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                                                    fontSize: 15.0,letterSpacing: 2.0)),
                                            SizedBox(height: 10,),
                                            Text('Swanson',style: TextStyle(fontSize: 10, letterSpacing: 1),),
                                          ],
                                        ),
                                        Divider(height: 5, color: Colors.black,),
                                        Column(
                                          children:[
                                            Positioned(
                                              height: 20,
                                              child: Row(children: [
                                                SizedBox(
                                                  width: 60,
                                                  child: Icon(
                                                    Icons.message,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 60,
                                                  child: Icon(
                                                    Icons.phone,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 60,
                                                  child: Icon(
                                                    Icons.video_call,
                                                    color: Colors.black,
                                                  ),
                                                )
                                              ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],),
                                  ),
                                ],),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ], ),
            ),
          ),
        )
    );
  }
}

