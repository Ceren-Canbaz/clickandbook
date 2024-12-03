import 'package:clickandbook/core/style/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key, required this.categories});
  final List<Map<String, String>> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            name: categories[index]['name']!,
            imageUrl: categories[index]['image']!,
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 14),
      ),
    );
  }
}
