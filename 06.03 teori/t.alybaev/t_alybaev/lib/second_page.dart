import 'package:flutter/material.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({super.key, required this.phone, required this.name});
  final String phone;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        actions: [
          Text('your account'),
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              phone,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
