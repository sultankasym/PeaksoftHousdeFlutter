import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});


  
  
 @override
  Widget build(Object context) {
   return MaterialApp(
    title: 'flutter',
    theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.white
       
    ),
   ),
   // ignore: prefer_const_constructors
   home: MyHomePage(Title 'welcomeTo', title: title,),
   );
  }
}
  
  class MyHomePage extends StatefulWidget{
const MyHomePage(Type title, {super.key, required this.title});
final String title;
@override
State MyHomePage>@override
  State<StatefulWidget> createState() => _MyHomePageState();
  }





