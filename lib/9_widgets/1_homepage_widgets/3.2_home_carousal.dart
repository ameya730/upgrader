import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

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
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: backGroundColor,
            ),
            child: ListTile(
              title: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  carousalList[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: 50,
        autoPlayAnimationDuration: Duration(seconds: 3),
        autoPlayCurve: Curves.linearToEaseOut,
        viewportFraction: 1,
        scrollDirection: Axis.vertical,
        reverse: true,
        // enlargeCenterPage: true,
        // enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}
