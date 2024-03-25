import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visit_card/doc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String phonenum = ' ';
  String email = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('homework'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/sultan.jpg',
            ),
          ),
          Text(
            'Sultan Zamirbek Uulu',
            style: TextStyle(fontFamily: 'Pacifico-Regular', fontSize: 28),
          ),
          Text(
            'Flutter DEveloper',
            style: TextStyle(),
          ),
          Divider(
            indent: 50,
            endIndent: 50,
            height: 1,
            thickness: 3,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            onChanged: (num) {
              num = phonenum;
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              hintText: 'phone number',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            onChanged: (mail) {
              mail = email;
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mark_as_unread_sharp),
              hintText: 'email',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
if (phonenum == ' ' && email == ' '){
  ScaffoldMessenger.of(context).showSnackBar
  (SnackBar()

  )
}            },
            child: Text('press'),
          ),
        ],
      ),
    );
  }
}
