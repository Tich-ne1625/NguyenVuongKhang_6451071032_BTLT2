import 'package:flutter/material.dart';

import '../views/product_detail_view.dart';

class ProductDetailApp extends StatelessWidget {
  const ProductDetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Detail',
      theme: ThemeData(colorSchemeSeed: Colors.green, useMaterial3: true),
      home: const ProductDetailView(),
    );
  }
}
