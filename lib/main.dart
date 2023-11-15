import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded soundButton(Color buttonColor, int noteNumber) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0, backgroundColor: buttonColor),
          onPressed: () {
            playSound(noteNumber);
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                
              ),
              soundButton(Colors.red, 1),
              soundButton(Colors.orange, 2),
              soundButton(Colors.yellow, 3),
              soundButton(Colors.green, 4),
              soundButton(Colors.teal, 5),
              soundButton(Colors.blue, 6),
              soundButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
