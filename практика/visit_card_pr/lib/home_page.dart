import 'package:flutter/material.dart';
import 'package:visit_card_pr/first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String email = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 95, 211),
      appBar: AppBar(
        leading: const Text('account'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(          width: 500,  child: TextField(
              onChanged: (value) {
                value = name;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_balance_rounded),
                hintText: 'name',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 500,
            child: TextField(
              onChanged: (value) {
                value = email;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.mail),
                hintText: 'email',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 500,
            child: TextField(
              onChanged: (value) {
                value = phone;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone_android),
                hintText: 'phone number',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstPage(
                      email: email,
                      name: name,
                      phone: phone,
              // if (name.isEmpty && email.isEmpty) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(
              //       content: Text('please, write name'),
              //     ),
              //   );
              // } else {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => FirstPage(
                //       email: email,
                //       name: name,
                //       phone: phone,
                    ),
                  ),
                );
              },  child: null,
           // },
           // child: const Text('press'),
          )
        ],
      ),
    );
  }
}
