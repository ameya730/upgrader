import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_homelandingbar_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/1.1_vobasicdetails_controller.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/1.1_bottombar_widget_button.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class HomePageBottomBar extends StatelessWidget {
  final bottomController = Get.put(HomeLandingBarController());
  final voDetailsController = Get.put(VODetailsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            alternateBackGroundColor.withOpacity(1),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 20,
          notchMargin: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BottomBarWidgetButton(
                indexValue: 0,
                icon: Icons.person,
                buttonLabel: 'Profile',
                onTap: () {
                  bottomController.bottomSelectedIndex.value = 0;
                },
              ),
              BottomBarWidgetButton(
                indexValue: 1,
                icon: Icons.search,
                buttonLabel: 'Search',
                onTap: () {
                  voDetailsController.getVoDetailsJsonData();
                  bottomController.bottomSelectedIndex.value = 1;
                },
              ),
              BottomBarWidgetButton(
                indexValue: 2,
                icon: Icons.home,
                buttonLabel: 'Home',
                onTap: () {
                  bottomController.bottomSelectedIndex.value = 2;
                },
              ),
              BottomBarWidgetButton(
                indexValue: 3,
                icon: Icons.money_sharp,
                buttonLabel: 'Donations',
                onTap: () {
                  bottomController.bottomSelectedIndex.value = 3;
                },
              ),
              BottomBarWidgetButton(
                indexValue: 4,
                icon: Icons.settings,
                buttonLabel: 'Settings',
                onTap: () {
                  bottomController.bottomSelectedIndex.value = 4;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
