import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({int audioNum,Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(audioNum);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(audioNum: 1, color: Colors.red),
              buildKey(audioNum: 2, color: Colors.orange),
              buildKey(audioNum: 3, color: Colors.yellow),
              buildKey(audioNum: 4, color: Colors.green),
              buildKey(audioNum: 5, color: Colors.teal),
              buildKey(audioNum: 6, color: Colors.blue),
              buildKey(audioNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
