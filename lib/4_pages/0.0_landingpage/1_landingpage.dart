import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/0_landingpagetopwidget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/1_landing_switch_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/2_login_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/3.0_newusersignup_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/4_landing_bottom_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class LandingPage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());
  final box = new GetStorage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    alternateBackGroundColor.withOpacity(0.2),
                    backGroundColor.withOpacity(0.015),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  LandingPageTopWidget(),
                  LandingPageSwitchWidget(),
                  Obx(
                    () {
                      return loginSwitch.switchOn.value
                          ? SignUpFirstPageWidget()
                          : LoginWidget();
                    },
                  ),
                  LandingPageBottomWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
