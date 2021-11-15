import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_homelandingbar_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.2_home_carousal.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.3.2_featuredvocarousel_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.4.1_featuredprojects.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.5.1_topdonations.dart';

class HomePage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());
  final pageSelection = Get.put(HomeLandingBarController());
  final testControl = Get.put(TestControl());

  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Welcome to Veepal'.tr,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: backGroundColor,
          ),
        ),
      ],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HomeMainPageCarousal(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FeaturedProjectCard(
                  cardLabel: 'Top Projects in Nov 2021',
                ),
              ),
              FeaturedVOCarousel(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TopDonationsWidget(
                  cardLabel: 'Top Donations for the Month',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestControl extends GetxController {
  final iValue = 0.obs;
}
