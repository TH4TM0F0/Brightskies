class Product {
  final String id;
  final String name;
  final String description;
  final String label;
  final String filePath;
  final int remainingStock;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.filePath,
    required this.remainingStock,
    this.description = '',
    this.label = '',
  });
}