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
            Expanded(
                child: TextButton(
              onPressed: () {
                xylophoneSound(1);
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(249, 244, 0, 0),
              ),
              child: Text('Play', style: TextStyle(color: Colors.white)),
            )),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(2);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 255, 123, 0) // Change text color
                      ),
                  child: Text('Play 2', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(3);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 255, 247, 0) // Change text color
                      ),
                  child: Text('Play 3', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(4);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 11, 121, 28) // Change text color
                      ),
                  child: Text('Play4', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(5);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 28, 92, 40) // Change text color
                      ),
                  child: Text('Play5', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(6);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 34, 96, 172) // Change text color
                      ),
                  child: Text('Play6', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    xylophoneSound(7);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 255, 0, 136) // Change text color
                      ),
                  child: Text('Play7', style: TextStyle(color: Colors.white))),
            ),
          ],
        )),
      ),
    );
  }
}
