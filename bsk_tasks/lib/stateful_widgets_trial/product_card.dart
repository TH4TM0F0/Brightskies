import 'package:flutter/material.dart';

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
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(widget.filePath),
              if (widget.label.isNotEmpty)
                Positioned(
                  top: 10,
                  left: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Text(
                      widget.label,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              Positioned(
                top: 4,
                right: 8,
                child: CircleAvatar(
                  child: IconButton(
                    onPressed: toggleFavorite,
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            widget.name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          if (widget.description.isNotEmpty)
            Column(
              children: [
                SizedBox(height: 10),
                Text(
                  widget.description,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${widget.price}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: remainingStock > 0 ? decrementStock : () {},
                  child: Text(
                    remainingStock > 0 ? 'Add to Cart' : 'Out of Stock',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
