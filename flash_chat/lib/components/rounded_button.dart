import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.buttonColor,
    required this.buttonTitle,
    required this.handlePress,
  });
  final Color buttonColor;
  final String buttonTitle;
  final Function() handlePress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: handlePress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
          ),
        ),
      ),
    );
  }
}
