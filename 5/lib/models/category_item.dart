class CategoryItem {
  CategoryItem({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });

  final String title;
  final List<String> items;
  bool isExpanded;
}
