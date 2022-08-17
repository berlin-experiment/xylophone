import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playNote(int noteNum) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$noteNum.wav'));
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
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(1);
                },
                color: Colors.red,
                child: Text(""),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(2);
                },
                color: Colors.orange,
                child: Text(""),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(3);
                },
                color: Colors.yellow,
                child: Text(""),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(4);
                },
                color: Colors.lightGreen,
                child: Text(""),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(5);
                },
                color: Colors.lightBlue,
                child: Text(""),
              ),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    playNote(6);
                  },
                  color: Colors.purple,
                  child: Text("")),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(7);
                },
                color: Colors.pink,
                child: Text(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
