import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.3.0_featuredprojectscarousel.dart';

class HomeFeaturedVOs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 16.0),
      child: FeaturedVOsCarousal(),
    );
  }
}
