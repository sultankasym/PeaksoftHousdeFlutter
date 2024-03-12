//import 'dart:html';

//import 'package:flutter/cupertino.dart';
//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HOmePage(),
    );
  }
}

class HOmePage extends StatelessWidget {
  const HOmePage({super.key});

  get backgroundColor => null;
  
 // get child => null;
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 91, 91, 89),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 43),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.search_outlined,
            size: 25,
            color: Color.fromARGB(221, 235, 229, 229),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'perfect App',
          style: TextStyle(
            fontFamily: "Times New Roman",
            color: Color.fromARGB(221, 235, 229, 229),
            fontSize: 40,
          ),
        ),
        actions: const [
          Icon(
            Icons.settings_applications_outlined,
            size: 25,
            color: Colors.white60,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.wifi_calling_3_outlined,
            size: 25,
            color: Colors.white60,
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: 
      Image.asset('assets/images/2151113627.jpg'),
      floatingActionButton: Row(
       // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton( onPressed:() {null;},
          child: const Icon(Icons.admin_panel_settings_outlined, 
          color: Color.fromARGB(255, 25, 3, 3),
          size: 30,)
          ),
           FloatingActionButton( onPressed:() {null;},
          child: const Icon(Icons.home_outlined, 
          color: Color.fromARGB(255, 54, 54, 54),
          size: 30,)
          ),
           FloatingActionButton( onPressed:() {null;},
          child: const Icon(Icons.menu_book_outlined, 
          color: Color.fromARGB(255, 54, 54, 54),
          size: 30,)
          ),
           FloatingActionButton( onPressed:() {null;},
          child: const Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 54, 54, 54),
          size: 30,)
          ),



        ],

        ),
      
    );
  }
}
