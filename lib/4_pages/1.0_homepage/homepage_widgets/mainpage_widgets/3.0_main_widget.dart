import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/mainpage_widgets/3.1_home_top_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/mainpage_widgets/3.2_home_carousal.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/mainpage_widgets/3.3_featuredvos.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/mainpage_widgets/3.4_featuredprojects.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/mainpage_widgets/3.5_topdonations.dart';

class MainHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            HomeTopWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: HomeMainPageCarousal(),
            ),
          ],
        ),
        HomeFeaturedVOs(),
        // HomeMainFeaturedProjectsCarousal(),
        HomeMainTopDonationsCarousal(),
      ],
    );
  }
}
