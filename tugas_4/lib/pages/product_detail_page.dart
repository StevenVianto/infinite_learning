import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/star_rating.dart';

/// Halaman detail produk — menampilkan info lengkap ketika kartu produk di-tap
class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------- APP BAR ----------
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),

      // ---------- BODY ----------
      // ListView vertikal agar halaman bisa di-scroll jika konten panjang
      body: ListView(
        children: [
          // ====== GAMBAR PRODUK (Image network, full-width) ======
          Image.network(
            product.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 300,
                color: Colors.grey.shade200,
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 300,
                color: Colors.grey.shade200,
                child: const Center(
                  child: Icon(Icons.image_not_supported,
                      size: 60, color: Colors.grey),
                ),
              );
            },
          ),

          // ====== INFO PRODUK ======
          Padding(
            padding: const EdgeInsets.all(20),
            // Column: menyusun semua informasi produk secara vertikal
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row: Nama produk + badge kategori
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama produk (Expanded agar tidak overflow)
                    Expanded(
                      child: Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Badge kategori
                    Chip(
                      label: Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      side: BorderSide.none,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // Row: Harga + Rating
                Row(
                  children: [
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade700,
                      ),
                    ),
                    const Spacer(),
                    StarRating(rating: product.rating, size: 22),
                  ],
                ),

                const SizedBox(height: 24),

                // Judul seksi deskripsi
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),

                // Teks deskripsi produk
                Text(
                  product.description.isNotEmpty
                      ? product.description
                      : 'No description available for this product.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 32),

                // Tombol Add to Cart (full-width)
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product.name} added to cart!'),
                          behavior: SnackBarBehavior.floating,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Add to Cart',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
