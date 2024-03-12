import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Your Diary',
          style: TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('welcome to Your World'),
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'DancingScript-Regular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
