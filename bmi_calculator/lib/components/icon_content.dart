import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.iconText, required this.iconFA});
  final String iconText;
  final IconData iconFA;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconFA,
          size: 80.0,
        ),
        const SizedBox(width: 15.0),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
