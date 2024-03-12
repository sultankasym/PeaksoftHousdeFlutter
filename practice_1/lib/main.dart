import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first app',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'welcome to our app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
body: Center(
  child: Center(
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center, 
      children :[
    Row(children: [
        Center(
          child: Container(decoration: BoxDecoration(
           color: Colors.red,
          borderRadius: BorderRadius.circular(25)),
            
          height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
        ),
             SizedBox(width: 15,),
    
         Container(decoration: BoxDecoration(
         color: Colors.yellow,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
    ],),
    SizedBox(height: 20,),
    Row(children: [
        Container(decoration: BoxDecoration(
         color: Colors.green,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
         SizedBox(width: 15,),
    
         Container(decoration: BoxDecoration(
         color: Colors.orange,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
    ],),
    SizedBox(height: 20,),
    
    Row(children: [
        Container(decoration: BoxDecoration(
         color: Colors.grey,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
             SizedBox(width: 15,),
    
         Container(decoration: BoxDecoration(
         color: Colors.yellow,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
    ],),
    SizedBox(height: 20,),
    
    Row(children: [
        Container(decoration: BoxDecoration(
         color: Colors.green,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
              SizedBox(width: 15,),
    
         Container(decoration: BoxDecoration(
         color: Colors.orange,
        borderRadius: BorderRadius.circular(25)),
    
        height: 100, width: 150, child: Center(child: Text('hello', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), )), ),
    ],),
    ],),
  ),
)



      ); 
  }
}
