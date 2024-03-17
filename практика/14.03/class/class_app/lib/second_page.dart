import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required String title});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/imag.jpg'), fit: BoxFit.cover),
          ),
          child: const Center(
            child: 
             
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'name', 
                    helperStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(fontSize: 20), 
                  ),
                ),
              ),
            
          ),
        ),
      ),
    );
  }
}
