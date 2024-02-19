import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

mainSlider(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.7,
    child: ImageSlideshow(
      indicatorColor: Colors.blue,
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 5000,
      isLoop: true,
      children: [
        Image.asset(
          'assets/1.png',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/2.png',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/3.png',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/4.png',
          fit: BoxFit.fitWidth,
        )
      ],
    ),
  );
}
