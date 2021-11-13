import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/drawer_card_widget.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        color: backGroundColor,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                DrawerCardAwesomeFontWidget(
                  label: 'Home Page'.tr,
                  icon: FontAwesomeIcons.home,
                  onPressed: () {
                    Get.toNamed('/homepage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Profile'.tr,
                  icon: FontAwesomeIcons.solidAddressBook,
                  onPressed: () {
                    Get.toNamed('/profilepage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Search'.tr,
                  icon: FontAwesomeIcons.search,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Create VO'.tr,
                  icon: FontAwesomeIcons.certificate,
                  onPressed: () {
                    Get.toNamed('/createVOfirstpage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Manage VOs'.tr,
                  icon: FontAwesomeIcons.check,
                  onPressed: () {
                    Get.toNamed('/yourvospage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Create Project'.tr,
                  icon: FontAwesomeIcons.projectDiagram,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Manage Projects'.tr,
                  icon: FontAwesomeIcons.creativeCommonsShare,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Donations'.tr,
                  icon: FontAwesomeIcons.donate,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Settings'.tr,
                  icon: FontAwesomeIcons.screwdriver,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'FAQs'.tr,
                  icon: FontAwesomeIcons.solidQuestionCircle,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Terms and Conditions'.tr,
                  icon: FontAwesomeIcons.discourse,
                  onPressed: () {},
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Logout'.tr,
                  icon: FontAwesomeIcons.signOutAlt,
                  onPressed: () {
                    Get.toNamed('/landingpage');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
