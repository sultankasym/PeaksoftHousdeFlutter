import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 String output = '0';
  String _output = '0';
  double num1 = 0.0;
    double num2 = 0.0;
    String operand = '';
    buttonPressed(String buttonText){
      if(buttonPressed=='CLEAR'){
  String _output = '0';
  double num1 = 0.0;
    double num2 = 0.0;
    String operand = '';
      }else if(
        buttonText == '+'|| buttonText == '-'|| buttonText =='/'||buttonText == '*' ){
 num1 = double.parse(output);

      operand = buttonText;

      _output = "0";

    } else if(buttonText == "."){

      if(_output.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        _output = _output + buttonText;
      }

    } else if (buttonText == "="){

      num2 = double.parse(output);

      if(operand == "+"){
        _output = (num1 + num2).toString();
      }
      if(operand == "-"){
        _output = (num1 - num2).toString();
      }
      if(operand == "X"){
        _output = (num1 * num2).toString();
      }
      if(operand == "/"){
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else {

      _output = _output + buttonText;

    }

    print(_output);

    setState(() {
      
      output = double.parse(_output).toStringAsFixed(2);

    });

        
      }
      
        @override
        Widget build(BuildContext context) {
          // TODO: implement build
          throw UnimplementedError();
        }
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    );
  }

