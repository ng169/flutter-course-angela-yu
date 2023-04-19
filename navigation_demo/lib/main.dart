import 'package:flutter/material.dart';
import 'package:navigation_demo/screen1.dart';
import 'package:navigation_demo/screen2.dart';
import 'screen0.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Screen0(),
        '/first': (context) => const Screen1(),
        '/second': (context) => const Screen2()
      },
    );
  }
}
