import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage( {super.key, required this.name, required this.phone});
final String name;
final String phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.indigo,
      appBar: AppBar(title:  Text('Данные о пользователя'),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Пользователь: $name', style: TextStyle(fontSize: 20),)),
            Center(child: Text('Номер Пользователя: $phone', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}