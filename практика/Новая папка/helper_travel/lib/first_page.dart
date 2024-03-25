import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column( 
        
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(                fit: BoxFit.cover,

                image: AssetImage(
                  'assets/images/fon1.jpg',
                ),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Travel to Kyrgyzstan',
              style: TextStyle(fontSize: 20),
              children: const <TextSpan>[
                TextSpan(
                  text:
                      'Kyrgyzstan, country of Central Asia. It is bounded by Kazakhstan on the northwest and north, by China on the east and south, and by Tajikistan and Uzbekistan on the south and west. Most of Kyrgyzstan’s borders run along mountain crests. ',
                  style: TextStyle(color: Colors.brown),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
