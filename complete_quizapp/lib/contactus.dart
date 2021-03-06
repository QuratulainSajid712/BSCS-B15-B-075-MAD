import 'package:flutter/material.dart';
import 'maindrawer.dart';
import 'package:contactus/contactus.dart';

class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}
class _contactusState extends State<contactus> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
        title: Text("Contact Us" ,textAlign: TextAlign.center,),
    ),
      drawer: Drawer(
        child: MainDrawer(),),

        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Qurat-Ul-Ain Sajid',
          textColor: Colors.white,
          backgroundColor: Colors.indigo.shade300,
          email: 'quratulainsajid12@gmail.com',
          // textFont: 'Sail',
        ),
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('images/quiz.png'),
            email: 'quratulainsajid12@gmail.com',
            companyName: ' Qurat-Ul-Ain Sajid',
            companyColor: Colors.teal.shade100,
            phoneNumber: '+92335766131',
            githubUserName: 'QuratulainSajid712',
            linkedinURL:
            'https://www.linkedin.com/in/quratulain-sajid-a19617159/',
            tagLine: 'Flutter Developer',
            taglineColor: Colors.teal.shade100,
            instagram: 'quratulainSajid',
            facebookHandle: 'Qurat Ul Ain Sajid'),

    );
     /* body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage:AssetImage('images/quiz.png') ,
              backgroundColor: Colors.white,
              radius: 100.0,
            ),
            Text(
              'Qurat-Ul-Ain Sajid',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,

              ),
            ),
      SizedBox(
        width: 600.0,
        height: 20.0,
        child: Divider(
            color:  Colors.white,
            thickness: 2.0
        ),
      ),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(" quratulainsajid12@gmail.com",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 4.0,

              ),),
            ),
            ListTile(
              onTap: () {
              },
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text("+92335XXXXXXX",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 4.0,

              ),),
            ),

          ],
        ),
      ),
    );*/
  }
}