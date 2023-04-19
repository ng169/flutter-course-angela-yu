import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Color(0XFF0A0E21),
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: const Color(0XFF0A0E21),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const SafeArea(child: InputPage()),
    );
  }
}
