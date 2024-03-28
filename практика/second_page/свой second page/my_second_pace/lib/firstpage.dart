import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key,  
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(185, 206, 38, 38),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Your Diary',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff7f6161),
                Color(0xffFFC2C2),
              ])),
              child: //Text('welcome to Your World'),
                  Center(
                    child: Text(
                                    text,
                                    // style: const TextStyle(
                                    //   fontFamily: 'DancingScript-Regular',
                                    //),
                                  ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
