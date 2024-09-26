import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XylophoneApp(),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final _player = AudioPlayer();

  void playNote (noteId) async  {
    await _player.setAsset("assets/note$noteId.wav");
    await _player.play();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(1);
                },
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(2);
                },
                child: Container(
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(3);
                },
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(4);
                },
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(5);
                },
                child: Container(
                  color: Colors.teal,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(6);
                },
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  playNote(5);
                },
                child: Container(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
