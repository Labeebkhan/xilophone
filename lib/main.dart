import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void xylophoneSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Widget noteCreation(Color color, int note, String num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          xylophoneSound(note);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text('Play $num', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: const Text('Xylophone App'),
          ),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            noteCreation(Colors.red, 1, '1'),
            noteCreation(const Color.fromARGB(255, 255, 119, 0), 2, '2'),
            noteCreation(Colors.yellow, 3, '3'),
            noteCreation(Colors.green, 4, '4'),
            noteCreation(Colors.lightGreen, 5, '5'),
            noteCreation(Colors.blueAccent, 6, '6'),
            noteCreation(Colors.cyanAccent, 7, '7'),
          ],
        )),
      ),
    );
  }
}
