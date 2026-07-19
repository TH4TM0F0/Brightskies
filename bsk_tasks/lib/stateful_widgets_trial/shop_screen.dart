import 'package:flutter/material.dart';
import 'package:bsk_tasks/stateful_widgets_trial/product_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text('Shop'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontStyle: FontStyle.italic,
        ),
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.4,
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
      ),
    );
  }
}