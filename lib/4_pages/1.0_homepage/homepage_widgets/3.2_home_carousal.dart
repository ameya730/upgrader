import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeMainPageCarousal extends StatelessWidget {
  final List carousalList = [
    'Registration of a new VO free for a limited duration. Avail offer now',
    'Vpeepal offers extensive support on VO account management',
    'Change in government regulations for all 32G certified organizations',
    'On Diwali special promotion on project verification',
    'Verify your VOs to ensure that people trust you'
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int i, int y) {
        return Container(
          height: 120,
          child: GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: Text(
                    carousalList[i],
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: 120,
        autoPlayAnimationDuration: Duration(
          seconds: 1,
        ),
        autoPlayCurve: Curves.linear,
        viewportFraction: 1,
        scrollDirection: Axis.vertical,
        reverse: true,
        enlargeCenterPage: false,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}
