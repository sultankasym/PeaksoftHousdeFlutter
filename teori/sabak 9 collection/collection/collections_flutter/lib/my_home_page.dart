import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget image1 = const FlutterLogo(
      size: 10,
    );
    Widget image2 = const FlutterLogo(
      style: FlutterLogoStyle.horizontal,
      size: 250,
    );

    String name = ' ';
    String userName = '';

    // String person = name;
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: const Text('home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 400,
              child: TextField(
                onChanged: (value1) {
                  userName = value1;
                },
                decoration: InputDecoration(
                  labelText: 'name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    userName: userName,
                    name: '',
                  ),
                ),
              );
            },
            label: Text('press1'),
            icon: Icon(Icons.skip_next_outlined),
          ),
          image2,
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              onChanged: (value) {
                name = value;
              },
              decoration: InputDecoration(
                helperText: 'username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          OutlinedButton(
            child: const Icon(
              Icons.next_plan,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    name: name,
                    userName: '',
                  ),
                ),
              );
            },
            // label: Text('press'),
          ),
          TextButton(
            onPressed: () {
              if (userName.isEmpty || name.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(width: 1,
                    duration: Duration(milliseconds: 200),
                    content: Text('jaz'),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      name: name,
                      userName: userName,
                    ),
                  ),
                );
              }
            },
            child: Text(
              'press',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
