import 'package:flutter/material.dart';
import 'package:hylophone/components/pianokeys.dart';
import 'package:audioplayers/audioplayers.dart';



class Hylophone extends StatefulWidget {

   const Hylophone({super.key});

  @override
  State<Hylophone> createState() => _HylophoneState();
}

class _HylophoneState extends State<Hylophone> {
  final  audioPlayers = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Flutter Hylophone', style: TextStyle( color: Colors.white),),
      ),
      body:  Column(
        children: [
          PianoKeys(
            color: Colors.green, text: 'do',
            onTap:(){ audioPlayers.play(AssetSource('note1.mp3'),);}
          ),
            PianoKeys(
            color: Colors.red, text: 're', onTap: (){}
          ),
           PianoKeys(
            color: Colors.blue, text: 'mi', onTap: () {  },
          ),
          PianoKeys(
            color: Colors.yellow, text: 'fa', onTap: () {  },
          ),
           PianoKeys(
            color: Color.fromARGB(255, 57, 138, 61), text: 'sol', onTap: () {  },
          ),
           PianoKeys(
            color: Colors.yellow, text: 'lia', onTap: () {  },
          ),
        ],
      ),
    );
  }
}
