import 'package:flutter/material.dart';

import '../models/news_article.dart';
import '../utils/app_constants.dart';
import '../widget/news_card.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  static const List<NewsArticle> articles = [
    NewsArticle(
      title: 'Flutter 4.0 Preview',
      description: 'Nhieu cai tien ve hieu nang va giao dien da duoc cong bo.',
      imageUrl: 'https://picsum.photos/seed/news1/900/500',
    ),
    NewsArticle(
      title: 'AI in Mobile Apps',
      description: 'Ung dung AI giup ca nhan hoa trai nghiem nguoi dung tren mobile.',
      imageUrl: 'https://picsum.photos/seed/news2/900/500',
    ),
    NewsArticle(
      title: 'UI Trends 2026',
      description: 'Thiet ke toi gian ket hop tuong tac sinh dong dang dan pho bien.',
      imageUrl: 'https://picsum.photos/seed/news3/900/500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            for (final article in articles) NewsCard(article: article),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerRight,
              child: Text('MSSV: $studentId'),
            ),
          ],
        ),
      ),
    );
  }
}
