import 'package:flutter/material.dart';

/// Widget untuk menampilkan bintang rating secara horizontal
class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  final bool showNumber;

  const StarRating({
    super.key,
    required this.rating,
    this.size = 16,
    this.showNumber = true,
  });

  @override
  Widget build(BuildContext context) {
    // Row: menyusun bintang + angka rating secara horizontal
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(5, (index) {
          if (index < rating.floor()) {
            return Icon(Icons.star, size: size, color: Colors.amber);
          } else if (index < rating) {
            return Icon(Icons.star_half, size: size, color: Colors.amber);
          } else {
            return Icon(Icons.star_border, size: size, color: Colors.amber);
          }
        }),
        if (showNumber) ...[
          const SizedBox(width: 4),
          Text(
            rating.toString(),
            style: TextStyle(
              fontSize: size - 4,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ],
    );
  }
}
