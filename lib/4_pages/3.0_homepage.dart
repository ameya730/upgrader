import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_homelandingbar_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.1_home_top_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.2_home_carousal.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.3_featuredvos.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.4_featuredprojects.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.5_topdonations.dart';

class HomePage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());
  final pageSelection = Get.put(HomeLandingBarController());

  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Welcome to Veepal'.tr,
      body: SingleChildScrollView(
        child: Column(
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
            HomeMainFeaturedProjectsCarousal(),
            HomeMainTopDonationsCarousal(),
          ],
        ),
      ),
    );
  }
}
