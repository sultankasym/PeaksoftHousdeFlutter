import 'package:flutter/material.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('hello world'), backgroundColor: Colors.teal,),
        body: Text('its good project', style: TextStyle(
          fontFamily: 'new times roman', 
          color: Colors.deepPurple
          ),
          ),
          )

      
    );
  }

}