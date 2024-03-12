import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
  void _decrement () {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
   
    var appBar2 = AppBar(
        backgroundColor: Colors.grey,
       leading: IconButton(
        icon: Icon(Icons.account_circle_outlined
        ), 
        onPressed: () { setState(() {
          print("hello"); },
        );
      
        },
       ),
        
       
    
       actions:[ Icon(Icons.more_horiz,),],
       title: Icon(Icons.search_sharp ),
        ); 
        
       
        
    var appBar = appBar2;
    return Scaffold(
      appBar: appBar,
       
      
      body: Center(
        
        
      child: Column(  mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.network('https://masterpiecer-images.s3.yandex.net/c8a3788b7cb911ee8fca720ccb3e265f:upscaled',
        height: 400, width: 700,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
               
                child:
                 Center(
               child:Row(children: [
                  Container(
                  child: Text(
                    'result',
                      style: TextStyle(color: Colors.white),
                  ),
                  )
                 ],
                 )
                ),
                
                                
               ),
               Container(
                child:  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
               )
             ],
           ),
        ]
        
        ),
        
      ),
    floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    FloatingActionButton(
      onPressed: _decrement,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    ),
    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  ],
)
    );
       // This trailing comma makes auto-formatting nicer for build methods.
     
  }
}
