import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache(fixedPlayer: AudioPlayer());
    player.fixedPlayer.stop();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red.shade900, soundNumber: 1),
              buildKey(color: Colors.orange.shade900, soundNumber: 2),
              buildKey(color: Colors.yellow.shade900, soundNumber: 3),
              buildKey(color: Colors.green.shade900, soundNumber: 4),
              buildKey(color: Colors.teal.shade300, soundNumber: 5),
              buildKey(color: Colors.blue.shade900, soundNumber: 6),
              buildKey(color: Colors.purple.shade900, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
