import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.2_manageprojects_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/2.3_myvos_controller.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos_widgets/2.3_managevos_widget.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos_widgets/2.4_manageprojects_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ManageVOPage extends StatelessWidget {
  final pageController = Get.put(VOPageController());
  final ManageProjectsController manageProjectsController =
      Get.put(ManageProjectsController());
  final MyVOsController myVOsController = Get.put(MyVOsController());
  final List voPages = <Widget>[
    CreateVOWidget(),
    CreateProjectWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          elevation: 20,
          onPressed: () {
            Get.offNamedUntil('/homepage', (route) => false);
          },
          child: Icon(Icons.keyboard_return),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Obx(
            () => Row(
              children: [
                Material(
                  elevation: pageController.voPageIndex.value == 0 ? 20 : 0,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          pageController.voPageIndex.value == 0
                              ? cherryColor
                              : backGroundColor,
                          pageController.voPageIndex.value == 0
                              ? backGroundColor
                              : backGroundColor
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2, 0.2],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        myVOsController.getMyVoDetails();
                        pageController.voPageIndex.value = 0;
                      },
                      child: Text(
                        'Manage VOs',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: pageController.voPageIndex.value == 1 ? 20 : 0,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          pageController.voPageIndex.value == 1
                              ? cherryColor
                              : backGroundColor,
                          pageController.voPageIndex.value == 1
                              ? backGroundColor
                              : backGroundColor
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2, 0.2],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        manageProjectsController.getProjectDetailsJsonData();
                        pageController.voPageIndex.value = 1;
                      },
                      child: Text(
                        'Manage Projects',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: backGroundColor,
        body: Obx(() => voPages[pageController.voPageIndex.value]),
      ),
    );
  }
}

class VOPageController extends GetxController {
  final voPageIndex = 0.obs;

  @override
  void onClose() {
    voPageIndex.value = 0;
    super.onClose();
  }
}
