import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 36, 92),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Thanks to you, I smile a little more, laugh a little harder, and cry a little less. I am so lucky to have you in my life. I don’t know where I would be without your love.",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'DancingScript-VariableFont_wght',
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('go back'),
          ),
        ],
      ),
    );
  }
}
