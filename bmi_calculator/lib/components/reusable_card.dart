import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.cardColor, this.cardChild, this.handleTap});
  final Color cardColor;
  final Widget? cardChild;
  final Function()? handleTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}
