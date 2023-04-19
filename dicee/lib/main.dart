import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Dicee',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: const DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void changeDice() {
    setState(
      () {
        leftDiceNum = Random().nextInt(6) + 1;
        rightDiceNum = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      leftDiceNum = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset('images/dice$leftDiceNum.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      rightDiceNum = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset('images/dice$rightDiceNum.png')),
          ),
        ],
      ),
      const SizedBox(
        height: 20.0,
      ),
      ElevatedButton(
        onPressed: () {
          changeDice();
        },
        child: const Text(
          "Roll Both",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    ]);
  }
}
