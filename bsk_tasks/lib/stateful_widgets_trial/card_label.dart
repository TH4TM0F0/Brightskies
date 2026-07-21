import 'package:flutter/material.dart';

class CardLabel extends StatelessWidget {
  final String label;
  const CardLabel({super.key, required this.label});

  Color get displayColor {
    switch (label) {
      case 'Discount': return Colors.red.shade300;
      case 'Trending': return Colors.green;
      case 'Hot Sale': return Colors.red;
      default: return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: displayColor,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),
      ),
    );
  }
}
