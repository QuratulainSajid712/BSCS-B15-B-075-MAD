import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'addEditPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRUD APPLICATION',
      theme: ThemeData(

        primarySwatch: Colors.amber,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Future getData()async{
    var url = Uri.parse('http://192.168.10.4/flutter-crud-app/viewContact.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Application'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditPage(),),);
          debugPrint('Clicked FloatingActionButton Button');
        },
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                List list = snapshot.data;
                return ListTile(
                  leading: GestureDetector(child: Icon(Icons.edit),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditPage(list: list,index: index,),),);
                      debugPrint('Edit Clicked');
                    },),
                  title: Text(list[index]['name']),
                  subtitle: Text(list[index]['phone']),
                  trailing: GestureDetector(child: Icon(Icons.delete),
                    onTap: (){
                      setState(() {
                        var url = Uri.parse( 'http://192.168.10.4/flutter-crud-app/delete.php');
                        http.post( url, body: {
                          'id' : list[index]['id'],
                        });
                      });
                      debugPrint('delete Clicked');
                    },),
                );
              }
          )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}

