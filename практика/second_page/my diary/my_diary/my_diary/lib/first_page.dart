import 'package:flutter/material.dart';
import 'package:my_diary/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '' ;

  void  _navigatorToSecondPage() {
    Navigator.push(context,
     MaterialPageRoute(
      builder: ((context) => SecondPage(context),),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              
            ),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        },
       
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}