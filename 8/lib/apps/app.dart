import 'package:flutter/material.dart';

import '../views/simple_dialog_view.dart';

class SimpleDialogApp extends StatelessWidget {
  const SimpleDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Dialog',
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const SimpleDialogView(),
    );
  }
}
