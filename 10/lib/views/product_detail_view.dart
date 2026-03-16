import 'package:flutter/material.dart';

import '../models/product.dart';
import '../utils/app_constants.dart';
import '../widget/price_tag.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  static const Product product = Product(
    name: 'Smart Watch X2',
    price: 2190000,
    description:
        'Dong ho thong minh theo doi suc khoe, nhan thong bao va pin den 7 ngay.',
    imageUrl: 'https://picsum.photos/seed/productx2/1000/700',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  PriceTag(price: product.price),
                  const SizedBox(height: 12),
                  Text(product.description),
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add to Cart'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('MSSV: $studentId'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
