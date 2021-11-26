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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Text(
                          'Photo',
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full name of user',
                              style: TextStyle(
                                color: greyTextFormFieldLabel,
                                fontFamily: fontFamilyCandara,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '9657712579',
                              style: TextStyle(
                                color: greyTextFormFieldLabel,
                                fontFamily: fontFamilyCandara,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: greyColor,
                          width: 0.4,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'test@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: greyTextFormFieldLabel,
                          fontFamily: fontFamilyCandara,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Home Page'.tr,
                  icon: FontAwesomeIcons.home,
                  onPressed: () {
                    Get.toNamed('/homepage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'My Profile'.tr,
                  icon: FontAwesomeIcons.solidAddressBook,
                  onPressed: () {
                    Get.toNamed('/profilepage');
                  },
                ),
                DrawerCardAwesomeFontWidget(
                  label: 'Search'.tr,
                  icon: FontAwesomeIcons.search,
                  onPressed: () {
                    Get.offNamed('/searchpage');
                  },
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
                  onPressed: () {
                    Get.toNamed('/createproject');
                  },
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
                  label: 'Privacy Policy'.tr,
                  icon: FontAwesomeIcons.doorClosed,
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
