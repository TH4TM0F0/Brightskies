import 'package:flutter/material.dart';
import 'package:bsk_tasks/database_sim/product.dart';

class ProductCard extends StatelessWidget {

  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Image.asset(
            'assets/images/keyboard.jpg',
            width: 150,
          ),
          Image.network(
            'https://cdn.dribbble.com/userupload/45459361/file/31af338d3ba8ad22ba8b15b51d139ae0.jpg?resize=1504x1504&vertical=center',
            width: 200,
          ),
          Text('Keyboard'),
        ],
      ),
    );
  }
}