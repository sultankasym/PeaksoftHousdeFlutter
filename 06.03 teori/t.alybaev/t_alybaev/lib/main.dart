import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 133, 118),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Тапшырма 2',
          style: TextStyle(fontSize: 24, fontFamily: 'Times New Roman'),
        )),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              
              width: 150,
              height: 150,
              
              child: CircleAvatar(
                child: Image.asset(
                  'assets/images/sultan.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Sultan Kasymov',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Pacifico-Regular'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: double.infinity, 
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  SizedBox(
                    width: 15,
                  ),
                  Text('0707191434'),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mark_as_unread_sharp,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('sultankasymov77@gmail.com'),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      // onPressed:
      // tooltip: 'Increment',
      //  child: const Icon(Icons.add),
      // ),
    );
  }
}
