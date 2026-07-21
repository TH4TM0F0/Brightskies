import 'package:flutter/material.dart';
import 'package:bsk_tasks/stateful_widgets_trial/product_card.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.5,
      padding: EdgeInsets.all(12),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const ProductCard(
          name: 'Headphones',
          price: 38.99,
          filePath: 'assets/images/headphones.jpg',
          remainingStock: 10,
          description:
          'Sony WH-CH520 Wireless Bluetooth On-Ear '
              'with Mic for Phone Call, Black',
          label: 'Trending',
        ),
        const ProductCard(
          name: 'iPhone 16',
          price: 799.99,
          filePath: 'assets/images/iphone.jpg',
          remainingStock: 10,
          description:
          'Apple iPhone 16 (128 GB) - Pink with Face ID | '
              'Tax Paid | 2 Years Official Warranty',
          label: 'Hot Sale',
        ),
        const ProductCard(
          name: 'Keyboard',
          price: 19.99,
          filePath: 'assets/images/keyboard.jpg',
          remainingStock: 10,
        ),
        const ProductCard(
          name: 'Keyboard',
          price: 19.99,
          filePath: 'assets/images/keyboard2.jpg',
          remainingStock: 10,
          label: 'Discount',
        ),
        const ProductCard(
          name: 'Keyboard',
          price: 19.99,
          filePath: 'assets/images/keyboard.jpg',
          remainingStock: 10,
        ),
        const ProductCard(
          name: 'Keyboard',
          price: 19.99,
          filePath: 'assets/images/keyboard.jpg',
          remainingStock: 10,
        ),
      ],
    );
  }
}
