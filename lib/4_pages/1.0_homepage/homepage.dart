import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/1_bottombar_widget.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/4.0_main_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class HomePage extends StatelessWidget {
  final loginSwitch = Get.put(LoginSignupSwitchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backGroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          backgroundColor: Color(0xffed5752),
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
        // floatingActionButton: FloatingActionButton.extended(
        //   backgroundColor: buttonColor,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        //   onPressed: () {},
        //   label: Text(
        //     'Manage \nVOs'.tr,
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontSize: 10,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        bottomNavigationBar: HomePageBottomBar(),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverFillRemaining(
              child: Center(
                child: Column(
                  children: [
                    MainHomeWidget(),
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
