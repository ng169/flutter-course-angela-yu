import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int n) {
      final player = AudioPlayer();
      player.play(
        AssetSource('note$n.wav'),
      );
    }

    Expanded buildKeyWidget(int n, Color colorName) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: colorName,
          ),
          onPressed: () {
            playSound(n);
          },
          child: const SizedBox(
            width: 10.0,
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKeyWidget(1, Colors.red),
                buildKeyWidget(2, Colors.orange),
                buildKeyWidget(3, Colors.yellow),
                buildKeyWidget(4, Colors.green),
                buildKeyWidget(5, Colors.teal),
                buildKeyWidget(6, Colors.blue),
                buildKeyWidget(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
