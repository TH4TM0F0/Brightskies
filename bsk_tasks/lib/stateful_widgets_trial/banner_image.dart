import 'package:flutter/material.dart';

class BannerSliderImage extends StatelessWidget {
  final String imagePath;

  const BannerSliderImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
