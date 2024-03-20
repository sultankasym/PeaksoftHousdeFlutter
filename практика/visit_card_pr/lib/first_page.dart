import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage(
      {super.key,
      required this.email,
      required this.name,
      required this.phone});
  final String name;
  final String email;
  final String phone;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        leading: Text('consol'),
      ),
      body:  Column(
        children: [
          Text(widget.name),
           Text(widget.email),
            Text(widget.phone, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
