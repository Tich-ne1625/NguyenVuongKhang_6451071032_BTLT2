import 'package:flutter/material.dart';

import '../models/category_item.dart';
import '../utils/app_constants.dart';
import '../widget/category_content.dart';

class ExpansionMenuView extends StatefulWidget {
  const ExpansionMenuView({super.key});

  @override
  State<ExpansionMenuView> createState() => _ExpansionMenuViewState();
}

class _ExpansionMenuViewState extends State<ExpansionMenuView> {
  final List<CategoryItem> _categories = [
    CategoryItem(title: 'Fruits', items: ['Apple', 'Banana', 'Orange']),
    CategoryItem(title: 'Vegetables', items: ['Carrot', 'Broccoli', 'Tomato']),
    CategoryItem(title: 'Drinks', items: ['Water', 'Tea', 'Coffee']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Menu')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: ExpansionPanelList(
                  expansionCallback: (index, isExpanded) {
                    setState(() {
                      _categories[index].isExpanded = !isExpanded;
                    });
                  },
                  children: _categories
                      .map(
                        (category) => ExpansionPanel(
                          isExpanded: category.isExpanded,
                          headerBuilder: (_, __) => ListTile(
                            title: Text(category.title),
                          ),
                          body: CategoryContent(items: category.items),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const Text('MSSV: $studentId'),
          ],
        ),
      ),
    );
  }
}
