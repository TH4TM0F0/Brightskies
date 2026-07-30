import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bsk_tasks/stateful_widgets_trial/card_label.dart';
import 'package:bsk_tasks/app_styles.dart';
import 'package:bsk_tasks/models/product.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_bloc.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_event.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_state.dart';
import 'package:bsk_tasks/bloc/cart/cart_bloc.dart';
import 'package:bsk_tasks/bloc/cart/cart_event.dart';
import 'package:bsk_tasks/bloc/cart/cart_state.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Card(
        shadowColor: Colors.black.withOpacity(0.2),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(product.filePath, fit: BoxFit.contain),
                    ),
                    if (product.label.isNotEmpty)
                      Positioned(
                        top: 10,
                        left: 8,
                        child: CardLabel(label: product.label),
                      ),
                    Positioned(
                      top: 4,
                      right: 8,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white.withOpacity(0.9),
                        child: BlocBuilder<FavoritesBloc, FavoritesState>(
                          builder: (context, state) {
                            final isFavorite = state.favoriteIds.contains(
                              product.id,
                            );
                            return IconButton(
                              onPressed: () {
                                context.read<FavoritesBloc>().add(
                                  ToggleFavorite(product.id),
                                );
                              },
                              iconSize: 24,
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(product.name, style: AppStyles.cardTitleStyle),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    '\$${product.price}',
                    style: AppStyles.cardPriceTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      final quantity = state.cartItems[product.id];

                      if (quantity == null) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black54,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: product.remainingStock > 0
                              ? () {
                                  context.read<CartBloc>().add(
                                    AddToCart(product),
                                  );
                                }
                              : null,
                          child: Text(
                            product.remainingStock > 0
                                ? 'Add to Cart'
                                : 'Out of Stock',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        );
                      } else {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black54,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                context.read<CartBloc>().add(
                                  DecrementQuantity(product.id),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                '$quantity',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black54,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                context.read<CartBloc>().add(
                                  IncrementQuantity(product.id),
                                );
                              },
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
