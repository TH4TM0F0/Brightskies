import 'package:bsk_tasks/app_styles.dart';
import 'package:bsk_tasks/stateful_widgets_trial/banner_image.dart';
import 'package:bsk_tasks/stateful_widgets_trial/banner_slider_image.dart';
import 'package:bsk_tasks/stateful_widgets_trial/products_grid.dart';
import 'package:flutter/material.dart';

List<BannerSliderImage> images = [
  BannerSliderImage(imagePath: 'assets/images/keyboard.jpg'),
  BannerSliderImage(imagePath: 'assets/images/keyboard2.jpg'),
  BannerSliderImage(imagePath: 'assets/images/keyboard3.jpg'),
  BannerSliderImage(imagePath: 'assets/images/keyboard4.jpg'),
  BannerSliderImage(imagePath: 'assets/images/iphone.jpg'),
  BannerSliderImage(imagePath: 'assets/images/headphones.jpg'),
];

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text('Not Jumia'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontStyle: FontStyle.italic,
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text('Currently Trending', style: AppStyles.carouselTitle),
          ),
          BannerSlider(images: images),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text('Products', style: AppStyles.carouselTitle),
          ),
          ProductsGrid(),
        ],
      ),
    );
  }
}
