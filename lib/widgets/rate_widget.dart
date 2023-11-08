import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, required this.doubleRate, this.textColor});

  final double doubleRate;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          doubleRate.toString(),
          style: TextStyle(
            fontSize: 15,
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        const Icon(Icons.star, color: Colors.amber),
      ],
    );
  }
}