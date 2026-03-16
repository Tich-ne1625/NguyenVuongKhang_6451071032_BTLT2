import 'package:flutter/material.dart';

class CategoryContent extends StatelessWidget {
  const CategoryContent({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => ListTile(
              leading: const Icon(Icons.label_outline),
              title: Text(item),
              dense: true,
            ),
          )
          .toList(),
    );
  }
}
