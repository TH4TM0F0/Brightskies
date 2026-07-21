import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bsk_tasks/stateful_widgets_trial/banner_image.dart';

class BannerSlider extends StatefulWidget {
  final List<BannerSliderImage> images;

  const BannerSlider({super.key, required this.images});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _currentBannerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: image,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 1.0,
        autoPlayCurve: Curves.easeInOut,
      ),
    );
  }
}
