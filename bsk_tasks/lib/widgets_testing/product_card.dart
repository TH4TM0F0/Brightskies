import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  int stockRemaining = 10;

  void decrementStock() {
    stockRemaining--;
    print(stockRemaining);
  }

  ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/keyboard.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Text(
                      'Trending',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  CircleAvatar(
                    child: IconButton(
                      onPressed: decrementStock,
                      icon: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Mechanical Keyboard',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Wireless mechanical gaming keyboard, made for gamers by gamers.',
            style: TextStyle(color: Colors.grey, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$19.99',
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
                  onPressed: stockRemaining > 0 ? decrementStock : () {},
                  child: Text(
                    stockRemaining > 0 ? 'Add to Cart' : 'Out of Stock',
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