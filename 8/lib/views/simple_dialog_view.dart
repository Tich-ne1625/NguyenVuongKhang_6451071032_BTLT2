import 'package:flutter/material.dart';

import '../models/dialog_option.dart';
import '../utils/app_constants.dart';
import '../widget/show_dialog_button.dart';

class SimpleDialogView extends StatelessWidget {
  const SimpleDialogView({super.key});

  static const List<DialogOption> options = [
    DialogOption('Option 1'),
    DialogOption('Option 2'),
    DialogOption('Option 3'),
  ];

  Future<void> _showOptions(BuildContext context) async {
    final selected = await showDialog<String>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Choose one option'),
          children: options
              .map(
                (option) => SimpleDialogOption(
                  onPressed: () => Navigator.pop(context, option.label),
                  child: Text(option.label),
                ),
              )
              .toList(),
        );
      },
    );

    if (selected != null && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You selected: $selected')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Dialog')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowDialogButton(onPressed: () => _showOptions(context)),
            const SizedBox(height: 16),
            const Text('MSSV: $studentId'),
          ],
        ),
      ),
    );
  }
}
