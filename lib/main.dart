import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playNote(int noteNum) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$noteNum.wav'));
}

Expanded buildKey({required Color color, required int numNote}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playNote(numNote);
      },
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      child: Text(""),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, numNote: 1),
            buildKey(color: Colors.orange, numNote: 2),
            buildKey(color: Colors.yellow, numNote: 3),
            buildKey(color: Colors.lightGreen, numNote: 4),
            buildKey(color: Colors.lightBlue, numNote: 5),
            buildKey(color: Colors.purple, numNote: 6),
            buildKey(color: Colors.pink, numNote: 7),
          ],
        ),
      ),
    );
  }
}
