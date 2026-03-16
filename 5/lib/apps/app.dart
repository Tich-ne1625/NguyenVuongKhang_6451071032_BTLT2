import 'package:flutter/material.dart';

import '../views/expansion_menu_view.dart';

class ExpansionMenuApp extends StatelessWidget {
  const ExpansionMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expansion Menu',
      theme: ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true),
      home: const ExpansionMenuView(),
    );
  }
}
