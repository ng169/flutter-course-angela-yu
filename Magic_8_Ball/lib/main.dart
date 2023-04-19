import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Ask Me Anything'),
        ),
        body: const Ball(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$ballNum.png'),
              onPressed: () {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
