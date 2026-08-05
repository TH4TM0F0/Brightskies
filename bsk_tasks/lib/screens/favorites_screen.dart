import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bsk_tasks/mock_data/products_list.dart';
import 'package:bsk_tasks/stateful_widgets_trial/product_card.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_bloc.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_state.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final favoritedProducts = mockProducts
            .where((product) => state.favoriteIds.contains(product.id))
            .toList();

        if (favoritedProducts.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 80,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  'No favorites yet',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Tap the heart icon on products to add them here',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        }

        return GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.5,
          padding: const EdgeInsets.all(12),
          children: favoritedProducts
              .map((product) => ProductCard(product: product))
              .toList(),
        );
      },
    );
  }
}