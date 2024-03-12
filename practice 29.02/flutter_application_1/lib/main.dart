// ignore: unused_import, avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 20, 14, 32)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  int _remove = 0;
  int _counter1 = 0;
  int _remove1 = 0;

  get bottomNavigationBar => null;
  //int _counter2 = 0;
  //int _remove2 = 0;
  //dynamic equals = {$_counter+$_remove};
  // get child => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrementCounter1() {
    setState(() {
      _remove1--;
    });
  }

  void _decrementCounter() {
    setState(() {
      _remove--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: const Icon(
          Icons.account_circle_rounded,
        ),
        title: Text('Perfect App',
            style: const TextStyle(
              fontFamily: 'Times New Roman',
              color: Color.fromARGB(255, 11, 11, 11),
            ),
            semanticsLabel: widget.title),
        actions: const [
          SizedBox(
            width: 250,
            height: 40,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  label: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage( 
            image: NetworkImage(
                'https://w7.pngwing.com/pngs/580/422/png-transparent-butterfly-pink-free-butterflies-pics-purple-blue-image-file-formats-thumbnail.png'),
          
          ),
        ),
 child: 
        Column(
          //Row(b
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: const Icon(
                    Icons.add_circle_outlined,
                    size: 50,
                  ),
                ),

                Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  '${_counter + _remove}',
                  style: const TextStyle(fontSize: 24),
                ),

                Text(
                  '${_counter + _remove1}',
                  style: const TextStyle(fontSize: 24),
                ),

                Text(
                  '$_remove',
                  style: const TextStyle(fontSize: 24),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: const Icon(
                    Icons.remove_circle_outlined,
                    size: 50,
                  ),
                )
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
             
              FloatingActionButton(
                onPressed: _decrementCounter1,
                child: const Icon(
                  Icons.remove_circle_outlined,
                  size: 50,
                ),
              ),
              Text(
                '$_remove1',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                '${_counter1 + _remove1}',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                '${_remove + _counter1}',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                '$_counter1',
                style: const TextStyle(fontSize: 24),
              ),

              FloatingActionButton(
                onPressed: _incrementCounter1,
                child: const Icon(
                  Icons.add_circle_outlined,
                  size: 50,
                ),
              ),
            ],
            
          
        
      /* Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        


         Center(
          child: BottomNavigationBar(
            elevation: 10,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                //  backgroundColor: Colors.blueGrey,
              ),
              BottomNavigati onBarItem(
                icon: Icon(
                  Icons.add,
                  size: 30,
                ),
                label: 'add',
                //  backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward_ios),
                label: 'arrow',
                //  backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
         )
          ],
         ) 
        ),*/
       ),
          ]
      ),
      
    )
    
    );

    
  }
}
