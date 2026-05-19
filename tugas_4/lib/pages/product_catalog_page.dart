import 'package:flutter/material.dart';
import '../data/product_data.dart';
import '../models/product.dart';
import '../widgets/category_list.dart';
import '../widgets/product_card.dart';
import 'product_detail_page.dart';

/// Halaman utama katalog produk
/// Menggunakan Column, Row, ListView (horizontal + vertikal), dan Image
class ProductCatalogPage extends StatefulWidget {
  const ProductCatalogPage({super.key});

  @override
  State<ProductCatalogPage> createState() => _ProductCatalogPageState();
}

class _ProductCatalogPageState extends State<ProductCatalogPage> {
  int _selectedCategoryIndex = 0;

  /// Filter produk berdasarkan kategori yang dipilih
  List<Product> get _filteredProducts {
    if (_selectedCategoryIndex == 0) return allProducts; // "All"
    final selectedCategory = categories[_selectedCategoryIndex];
    return allProducts
        .where((product) => product.category == selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------- APP BAR ----------
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),

      // ---------- BODY ----------
      // Column: menyusun kategori (atas) dan daftar produk (bawah) secara vertikal
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ====== HORIZONTAL CATEGORY LIST (ListView horizontal) ======
          CategoryList(
            categories: categories,
            selectedIndex: _selectedCategoryIndex,
            onCategorySelected: (index) {
              setState(() {
                _selectedCategoryIndex = index;
              });
            },
          ),

          const SizedBox(height: 12),

          // ====== VERTICAL PRODUCT LIST (ListView vertikal) ======
          Expanded(
            child: _filteredProducts.isEmpty
                ? const Center(
                    child: Text(
                      'No products found',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : _buildProductList(),
          ),
        ],
      ),
    );
  }

  /// ListView vertikal, setiap item berisi Row dengan 2 ProductCard
  Widget _buildProductList() {
    final products = _filteredProducts;

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: (products.length / 2).ceil(),
      itemBuilder: (context, index) {
        final int firstIndex = index * 2;
        final int secondIndex = firstIndex + 1;

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          // Row: 2 product card berdampingan secara horizontal
          child: Row(
            children: [
              Expanded(
                child: ProductCard(
                  product: products[firstIndex],
                  onTap: () => _navigateToDetail(products[firstIndex]),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: secondIndex < products.length
                    ? ProductCard(
                        product: products[secondIndex],
                        onTap: () => _navigateToDetail(products[secondIndex]),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Navigasi ke halaman detail produk
  void _navigateToDetail(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  }
}
