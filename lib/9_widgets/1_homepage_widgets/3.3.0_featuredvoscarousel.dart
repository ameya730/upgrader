import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.3.1_featuredvoscarousalbutton.dart';

class FeaturedVOsCarousal extends StatelessWidget {
  final List listOfLabels = [
    'Top Registered VOs',
    'Top 12A Certified VOs',
    'Top 80G Certified VOs',
    'Top 35AC Certified VOs',
    'Top FCRA Certified VOs',
  ];
  final List registeredList = [
    'Registered VO 1',
    'Registere VO 2',
    'Registered VO 3',
    'Registered VO 4',
    'Registered VO 5',
  ];
  final List registeredImageList = [
    'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf1.png',
    'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf2.png',
    'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf3.png',
    'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf4.png',
    'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf5.png',
  ];
  final List twelweaList = [
    '12A VO 1',
    '12A VO 2',
    '12A VO 3',
    '12A VO 4',
    '12A VO 5',
  ];
  final List eightyGList = [
    '80G VO 1',
    '80G VO 2',
    '80G VO 3',
    '80G VO 4',
    '80G VO 5',
  ];
  final List thirtyFiveList = [
    '35AC VO 1',
    '35AC VO 2',
    '35AC VO 3',
    '35AC VO 4',
    '35AC VO 5',
  ];
  final List fcraList = [
    'FCRA VO 1',
    'FCRA VO 2',
    'FCRA VO 3',
    'FCRA VO 4',
    'FCRA VO 5',
  ];
  final List voList = ['Voluntary Organization 1'];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (
        BuildContext context,
        int i,
        int y,
      ) {
        return FeaturedVOsCarousalButton(
            mainLabel: listOfLabels[i],
            cardName: i == 0
                ? registeredList[i]
                : i == 1
                    ? twelweaList[i]
                    : i == 2
                        ? eightyGList[i]
                        : i == 3
                            ? thirtyFiveList[i]
                            : fcraList[i],
            imageName: registeredImageList[i]);
      },
      options: CarouselOptions(
        height: 350,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
    );
  }
}
