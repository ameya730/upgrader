import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.3.1_featuredvo_widget.dart';

class FeaturedVOCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Material(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            items: [
              FeaturedCard(cardLabel: 'Top Registered VOs'),
              FeaturedCard(cardLabel: 'Top FCRA VOs'),
              FeaturedCard(cardLabel: 'Top 80G VOs'),
            ],
            options: CarouselOptions(
              height: 200,
              // enlargeCenterPage: true,
              viewportFraction: 1,
              autoPlay: true,
              reverse: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.linearToEaseOut,
            ),
          ),
        ),
      ),
    );
  }
}
