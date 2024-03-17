import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 181, 243),
        title: const Text(
          'Common Text Field Demo',
          style: TextStyle(color: Color.fromARGB(255, 120, 81, 81)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 600,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.account_box),
                    hintText: 'name',
                    iconColor: Color.fromARGB(255, 67, 181, 243),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 67, 181, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 600,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.password),
                    hintText: 'password',
                    iconColor: Color.fromARGB(255, 67, 181, 243),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 67, 181, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 600,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    hintText: 'email',
                    iconColor: Color.fromARGB(255, 67, 181, 243),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 67, 181, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 600,
                height: 200,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.message),
                    hintText: 'message',
                    iconColor: Color.fromARGB(255, 67, 181, 243),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 67, 181, 243),
                    ),
                  ),
                ),
              ),
              Container(
                width: 330,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 67, 181, 243),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const TextButton(
                  onPressed: null,
                  child: Text('submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
