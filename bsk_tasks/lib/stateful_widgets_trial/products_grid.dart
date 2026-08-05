import 'package:flutter/material.dart';
import 'package:bsk_tasks/stateful_widgets_trial/product_card.dart';
import 'package:bsk_tasks/models/product.dart';
import 'package:bsk_tasks/mock_data/products_list.dart';

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
      children: mockProducts
          .map((product) => ProductCard(product: product))
          .toList(),
    );
  }
}
