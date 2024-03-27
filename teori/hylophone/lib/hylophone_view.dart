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
        title: const Text('Flutter Hylophone', style: TextStyle( color: Colors.white),),
      ),
      body:  Column(
        children: [
          PianoKeys(
            color: Colors.green, text: 'do',
            onTap:(){ audioPlayers.play(AssetSource('note1.mp3'),);}
          ),
            PianoKeys(
            color: Colors.red, text: 're', onTap: (){ audioPlayers.play(AssetSource('note2.mp3'),);}
          ),
           PianoKeys(
            color: Colors.blue, text: 'mi', onTap: () {  audioPlayers.play(AssetSource('note3.mp3'),); },
          ),
          PianoKeys(
            color: Colors.yellow, text: 'fa', onTap: () {  audioPlayers.play(AssetSource('note4.mp3'),); },
          ),
           PianoKeys(
            color: const Color.fromARGB(255, 57, 138, 61), text: 'sol', onTap: () {  audioPlayers.play(AssetSource('note5.mp3'),); },
          ),
           PianoKeys(
            color: Colors.yellow, text: 'lia', onTap: () {  audioPlayers.play(AssetSource('note6.mp3'),); },
          ),
        ],
      ),
    );
  }
}
