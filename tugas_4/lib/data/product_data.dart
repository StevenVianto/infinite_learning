import '../models/product.dart';

// ============================================================
// Daftar Kategori
// ============================================================
final List<String> categories = [
  'All',
  'Clothing',
  'Shoes',
  'Accessories',
  'Electronics',
  'Sports',
];

// ============================================================
// Daftar Produk (Network Images via Unsplash)
// ============================================================
final List<Product> allProducts = [
  const Product(
    name: 'Wireless Headphones',
    imageUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=400&fit=crop',
    price: 59.99,
    rating: 4.5,
    category: 'Electronics',
    description:
        'Premium wireless headphones with active noise cancellation, '
        '30-hour battery life, and ultra-comfortable over-ear design. '
        'Perfect for music lovers and professionals.',
  ),
  const Product(
    name: 'Running Shoes',
    imageUrl:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&h=400&fit=crop',
    price: 89.99,
    rating: 4.8,
    category: 'Shoes',
    description:
        'Lightweight running shoes with responsive cushioning and breathable '
        'mesh upper. Engineered for speed and long-distance comfort.',
  ),
  const Product(
    name: 'Leather Jacket',
    imageUrl:
        'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=400&fit=crop',
    price: 149.99,
    rating: 4.3,
    category: 'Clothing',
    description:
        'Classic genuine leather jacket with a modern slim fit. '
        'Features zippered pockets and a soft inner lining for all-season wear.',
  ),
  const Product(
    name: 'Smart Watch',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop',
    price: 199.99,
    rating: 4.7,
    category: 'Electronics',
    description:
        'Feature-packed smart watch with heart rate monitor, GPS tracking, '
        'and 7-day battery life. Water resistant up to 50 meters.',
  ),
  const Product(
    name: 'Sunglasses',
    imageUrl:
        'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=400&h=400&fit=crop',
    price: 34.99,
    rating: 4.1,
    category: 'Accessories',
    description:
        'Stylish polarized sunglasses with UV400 protection. '
        'Lightweight titanium frame available in multiple colors.',
  ),
  const Product(
    name: 'Backpack',
    imageUrl:
        'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400&h=400&fit=crop',
    price: 45.99,
    rating: 4.6,
    category: 'Accessories',
    description:
        'Durable 30L backpack with padded laptop compartment, '
        'water-resistant fabric, and ergonomic shoulder straps.',
  ),
  const Product(
    name: 'Denim Jeans',
    imageUrl:
        'https://images.unsplash.com/photo-1542272454315-4c01d7abdf4a?w=400&h=400&fit=crop',
    price: 64.99,
    rating: 4.4,
    category: 'Clothing',
    description:
        'Premium stretch denim jeans with a comfortable regular fit. '
        'Made from sustainably sourced cotton blend.',
  ),
  const Product(
    name: 'Sneakers',
    imageUrl:
        'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=400&h=400&fit=crop',
    price: 74.99,
    rating: 4.2,
    category: 'Shoes',
    description:
        'Versatile everyday sneakers with memory foam insole '
        'and durable rubber outsole. Perfect for casual and active wear.',
  ),
  const Product(
    name: 'Baseball Cap',
    imageUrl:
        'https://images.unsplash.com/photo-1556306535-0f09a537f0a3?w=400&h=400&fit=crop',
    price: 19.99,
    rating: 4.0,
    category: 'Accessories',
    description:
        'Adjustable cotton baseball cap with embroidered logo. '
        'One size fits most with a breathable mesh back panel.',
  ),
  const Product(
    name: 'Sports T-Shirt',
    imageUrl:
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&h=400&fit=crop',
    price: 29.99,
    rating: 4.3,
    category: 'Sports',
    description:
        'Moisture-wicking sports t-shirt with 4-way stretch fabric. '
        'Anti-odor technology keeps you fresh during intense workouts.',
  ),
  const Product(
    name: 'Yoga Mat',
    imageUrl:
        'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=400&h=400&fit=crop',
    price: 39.99,
    rating: 4.5,
    category: 'Sports',
    description:
        'Eco-friendly non-slip yoga mat with 6mm cushioning. '
        'Includes carrying strap and is free from harmful chemicals.',
  ),
  const Product(
    name: 'Bluetooth Speaker',
    imageUrl:
        'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400&h=400&fit=crop',
    price: 44.99,
    rating: 4.4,
    category: 'Electronics',
    description:
        'Portable Bluetooth speaker with 360-degree sound and deep bass. '
        'Waterproof IPX7 rated, perfect for outdoor adventures.',
  ),
];
