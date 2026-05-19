import 'package:flutter/material.dart';

/// Widget untuk menampilkan daftar kategori secara horizontal (ListView horizontal)
class CategoryList extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CategoryList({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      // ListView horizontal untuk scroll kategori
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final bool isSelected = index == selectedIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () => onCategorySelected(index),
              child: Chip(
                label: Text(
                  categories[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black87,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                backgroundColor:
                    isSelected ? Colors.deepPurple : Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                side: BorderSide.none,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              ),
            ),
          );
        },
      ),
    );
  }
}
