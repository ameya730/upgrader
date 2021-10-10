import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos_widgets/2.2_dashboard_widget.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos_widgets/2.4_createproject_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ManageVOPage extends StatelessWidget {
  final pageController = Get.put(VOPageController());
  final List voPages = <Widget>[
    CreateProject(),
    VODashboard(),
    CreateProject(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Manage your VOs'.tr,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: alternateBackGroundColor,
        ),
        bottomNavigationBar: ConvexAppBar.builder(
          backgroundColor: alternateBackGroundColor,
          elevation: 25,
          initialActiveIndex: 1,
          onTap: (int i) {
            pageController.voPageIndex.value = i;
          },
          itemBuilder: Builder(),
          count: 3,
        ),
        backgroundColor: backGroundColor,
        body: Obx(() => voPages[pageController.voPageIndex.value]),
      ),
    );
  }
}

class Builder extends DelegateBuilder {
  final List iconList = [
    Icons.business,
    Icons.home,
    Icons.volunteer_activism,
  ];
  final List labelList = [
    'Create VO'.tr,
    'Dashboard'.tr,
    'Create Project'.tr,
  ];
  @override
  Widget build(BuildContext context, int i, bool isActive) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Color(0xffed5752).withOpacity(0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[i],
                  color: backGroundColor,
                  size: 24,
                ),
                Text(
                  labelList[i],
                  style: TextStyle(
                    fontSize: 10,
                    color: backGroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[i],
                color: backGroundColor,
                size: 24,
              ),
              Text(
                labelList[i],
                style: TextStyle(
                  fontSize: 10,
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
  }
}

class VOPageController extends GetxController {
  final voPageIndex = 1.obs;

  @override
  void onClose() {
    voPageIndex.value = 1;
    super.onClose();
  }
}
