import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:t_alybaev/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String phone = '';
  String name = '';
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
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Center(
              child: CircleAvatar(
                child: Image.asset(
                  'assets/images/sultan.jpg',
                ),
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
          Column(
            children: [
              Center(
                child: Container(
                  color: Colors.white,
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal()),
                          ),
                          onChanged: (value) {
                            phone = value;
                          }
                          // Icon(Icons.call),
                          ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            color: Colors.white,
            height: 60,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.mark_as_unread_sharp,
                ),
                const SizedBox(
                  width: 15,
                ),
                TextField(
                  onChanged: (value) {
                    value = name;
                  },
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SeconPage(
                    phone: phone,
                    name: name,
                  ),
                ),
              );
            },
            child: const Text('press'),
          ),
        ],
      ),
    );
  }
}
