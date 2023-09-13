import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() {
    return _CarouselSliderWidgetState();
  }
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    List newsList = ["1", "2", "3"];

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
            viewportFraction: 0.8,
            enlargeFactor: 0.2,
            scrollDirection: Axis.horizontal,
            autoPlay: false,
            height: 350,
            onPageChanged: (index, reason) {},
          ),
          items: sliderItems(newsList),
        ),
      ],
    );
  }
}

List<Container> sliderItems(List carouselItems) {
  return carouselItems
      .map(
        (item) => Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Container(color: Colors.red),
          ),
        ),
      )
      .toList();
}
