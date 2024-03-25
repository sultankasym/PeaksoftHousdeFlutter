import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key, required this.name, required this.userName});

  final String name;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              label: const Text(
                'press here',
                style: TextStyle(fontSize: 23),
                selectionColor: Colors.white,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(name),
            SizedBox(
              height: 15,
            ),
            Text(userName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.back_hand),
            )
          ],
        ),
      ),
    );
  }
}
