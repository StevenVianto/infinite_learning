class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double rating;
  final String category;
  final String description;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.category,
    this.description = '',
  });
}
