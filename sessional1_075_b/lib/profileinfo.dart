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
                          height: 500,
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
                            Container(
                              child: Image.network(
                                'images/3.jpg',
                                height: 230,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            /*   Positioned(
                           top: 344,
                           right: 50,
                           child: Stack(
                             alignment: Alignment.center,
                             children: [
                               Positioned(
                                   left:0,
                                   right: 0,
                                   child:Container(height: 60,
                                   decoration: BoxDecoration(
                                     boxShadow: [
                                       BoxShadow(color: Color.fromARGB(51, 0, 0, 0),
                                       offset: Offset(0,20),
                                       blurRadius: 30,),
                                     ],
                                   ),
                                     child: Image.asset('icons/person.jpg',fit: BoxFit.fill,),
                                   ),
                               ),
                               Positioned(left: 18,
                               right: 18,
                               child: Image.asset('icons/plus.png',
                                 fit: BoxFit.fill,),
                               ),
                             ],
                           ),),*/
                            Container(
                              height:210.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: <Color>[
                                    Color(0xFFE0F7FA),
                                    Color(0xFF80DEEA),
                                    Color(0xFF26C6DA),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Event Manager",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 10.0,
                                        letterSpacing: 2.0,
                                      ),
                                    ),
                                    Text('San Francisco',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                        letterSpacing: 2.0,
                                      ),
                                    ),
                                    SizedBox(height:30),
                                    Divider(

                                      color: Color(0xFF80DEEA),
                                    ),
                                    SizedBox(height: 40,),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children:[
                                              Text('145K',
                                                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                                              SizedBox(height: 5,),
                                              Text('Followers',style: TextStyle(fontSize: 10, letterSpacing: 1),),
                                            ],
                                          ),
                                          Divider(height: 10, color: Colors.black,),
                                          Column(
                                            children:[
                                              Text('56K',
                                                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                                              SizedBox(height: 5,),
                                              Text('Following',style: TextStyle(fontSize: 10, letterSpacing: 1),),
                                            ],
                                          ),
                                          Divider(height: 10, color: Colors.black,),
                                          Column(
                                            children:[
                                              Text('1,690',
                                                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                                              SizedBox(height: 5,),
                                              Text('Likes',style: TextStyle(fontSize: 10, letterSpacing: 1),),
                                            ],
                                          ),
                                          Divider(height: 10, color: Colors.black,),
                                        ],
                                      ),
                                    ),
                                  ],

                                ),

                              ),

                            ),
                            Container(
                              height:60.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child:Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 10,
                                    left: 2,
                                    width: 80,
                                    height: 35,
                                    child:  Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('icons/message.png')
                                          )
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10,
                                    left: 150,
                                    width: 80,
                                    height: 35,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('icons/phone.png')
                                          )
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 12,
                                    left: 300,

                                    width: 80,
                                    height: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('icons/video.png')
                                          )
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

