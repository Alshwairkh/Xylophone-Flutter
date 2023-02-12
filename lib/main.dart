import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded box(int tone, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$tone.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              box(1, Colors.red),
              box(2, Colors.blue),
              box(3, Colors.yellow),
              box(4, Colors.purple),
              box(5, Colors.green),
              box(6, Colors.brown),
              box(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
