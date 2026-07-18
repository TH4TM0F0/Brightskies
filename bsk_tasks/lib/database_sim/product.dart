import 'dart:ffi';
import 'dart:ui';

class Product {
  final String name;
  final Float price;
  Image localImage;
  String? description;

  Product({
    required this.name,
    required this.price,
    required this.localImage
  });
}