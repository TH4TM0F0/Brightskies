import 'package:flutter/material.dart';
import 'package:bsk_tasks/stateful_widgets_trial/card_label.dart';
import 'package:bsk_tasks/app_styles.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String description;
  final String label;
  final String filePath;
  final int remainingStock;
  final double price;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.filePath,
    required this.remainingStock,
    this.description = '',
    this.label = '',
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;
  int remainingStock = 0;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void decrementStock() {
    setState(() {
      remainingStock--;
    });
  }

  @override
  void initState() {
    super.initState();
    remainingStock = widget.remainingStock;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320, // Fixed height for all cards
      child: Card(
        shadowColor: Colors.black.withOpacity(0.2),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              flex: 2, // Image takes 2/3 of the space
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(widget.filePath, fit: BoxFit.contain),
                    ),
                    if (widget.label.isNotEmpty)
                      Positioned(
                        top: 10,
                        left: 8,
                        child: CardLabel(label: widget.label),
                      ),
                    Positioned(
                      top: 4,
                      right: 8,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white.withOpacity(0.9),
                        child: IconButton(
                          onPressed: toggleFavorite,
                          iconSize: 24,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(widget.name, style: AppStyles.cardTitleStyle),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    '\$${widget.price}',
                    style: AppStyles.cardPriceTextStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: remainingStock > 0 ? decrementStock : null,
                    child: Text(
                      remainingStock > 0 ? 'Add to Cart' : 'Out of Stock',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
