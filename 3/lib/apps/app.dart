import 'package:flutter/material.dart';

import '../views/news_view.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const NewsView(),
    );
  }
}
