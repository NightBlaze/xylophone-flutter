import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();

  void playSound({int withNumber}) {
    audioPlayer.play('note$withNumber.wav');
  }

  Widget createButton({Color color, int soundNumber}) => Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(withNumber: soundNumber);
          },
          color: color,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(color: Colors.red, soundNumber: 1),
              createButton(color: Colors.orange, soundNumber: 2),
              createButton(color: Colors.yellow, soundNumber: 3),
              createButton(color: Colors.green, soundNumber: 4),
              createButton(color: Colors.teal, soundNumber: 5),
              createButton(color: Colors.blue, soundNumber: 6),
              createButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
