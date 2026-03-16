import 'package:flutter/material.dart';

import '../views/profile_view.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      home: const ProfileView(),
    );
  }
}
