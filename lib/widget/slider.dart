import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> benner = [
  'images/image1.jpeg',
  'images/image2.jpeg',
  'images/image3.jpeg',
];
final List<String> proImage = [
  'images/croos.png',
  'images/croos1.jpeg',
  'images/croos2.jpeg',
  'images/croos3.jpeg',
];

class SliderWidget {
  static CarouselSlider slideAdd() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
      ),
      items: benner
          .map((item) => Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(item),
                  ),
                ),
              ))
          .toList(),
    );
  }

  static CarouselSlider slideImage() {
    return CarouselSlider(
      options: CarouselOptions(
        //autoPlay: true,
        aspectRatio: 2.0,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
      ),
      items: proImage
          .map((item) => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16.0),),
                child: Center(
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000),),
              ))
          .toList(),
    );
  }
}
