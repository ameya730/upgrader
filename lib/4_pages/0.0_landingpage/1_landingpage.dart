import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/0_landingpagetopwidget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/1_landing_switch_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/2_login_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/3_newusersignup_widget.dart';

class LandingPage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverFillRemaining(
              child: Center(
                child: Column(
                  children: [
                    LandingPageTopWidget(),
                    LandingPageSwitchWidget(),
                    Obx(
                      () {
                        return loginSwitch.switchOn.value
                            ? SignUpWidget()
                            : LoginWidget();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
