import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, required this.doubleRate});

  final double doubleRate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          doubleRate.toString(),
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        const Icon(Icons.star, color: Colors.amber),
      ],
    );
  }
}