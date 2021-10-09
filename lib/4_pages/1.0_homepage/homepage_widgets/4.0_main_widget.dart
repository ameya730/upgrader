import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.1_home_top_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.2_home_carousal.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.3_featuredprojects.dart';

class MainHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTopWidget(),
        HomeMainPageCarousal(),
        HomeFeaturedVOs(),
      ],
    );
  }
}
