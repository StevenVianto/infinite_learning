import 'package:flutter/material.dart';
import '../models/product.dart';
import 'star_rating.dart';

/// Widget kartu produk yang bisa di-tap untuk navigasi ke detail
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        // Column: menyusun gambar dan info produk secara vertikal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ====== IMAGE (Network Image) ======
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(14)),
              child: Image.network(
                product.imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 150,
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Icon(Icons.image_not_supported,
                          size: 40, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),

            // ====== PRODUCT INFO ======
            Padding(
              padding: const EdgeInsets.all(10),
              // Column: nama, harga, rating tersusun vertikal
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  StarRating(rating: product.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
