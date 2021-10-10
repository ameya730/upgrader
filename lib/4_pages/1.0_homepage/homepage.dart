import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_homelandingbar_controller.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/1_bottombar_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/2.0_profile_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.0_main_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/5.0_home_donations_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/6.0_settings_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/search_widgets/4.0_search_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class HomePage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());
  final pageSelection = Get.put(HomeLandingBarController());
  final pageList = <Widget>[
    ViewProfilePage(),
    SearchWidget(),
    MainHomeWidget(),
    HomeDonationWidget(),
    SettingsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff426e86),
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          centerTitle: true,
          title: Text(
            'Welcome to VPeepal'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: backGroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: backGroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xffed5752),
          tooltip: 'Manage your VOs and projects over here'.tr,
          child: Text(
            'Manage VOs'.tr,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: HomePageBottomBar(),
        body: SingleChildScrollView(
          child: Obx(() => pageList[pageSelection.bottomSelectedIndex.value]),
        ),
      ),
    );
  }
}
