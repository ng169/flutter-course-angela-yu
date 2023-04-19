import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[500],
          title: const Text("I am Poor"),
        ),
        body: const Center(
          child: Image(
            image: AssetImage(
                "images/vecteezy_the-poor-businessman-shows-off-his-empty-trouser-pocket_5607828.jpg"),
          ),
        ),
      ),
    ),
  );
}
