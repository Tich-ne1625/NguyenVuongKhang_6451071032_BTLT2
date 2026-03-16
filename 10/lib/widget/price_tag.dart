import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key, required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${price.toStringAsFixed(0)} VND',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
