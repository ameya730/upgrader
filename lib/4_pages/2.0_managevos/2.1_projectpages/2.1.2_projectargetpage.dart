import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.2_projecttargets_controller.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.1_projectpages/projectpage_widgets/2.1.2.0_definetarget_widget.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.1_projectpages/projectpage_widgets/2.1.2.1_showtargets_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ProjectTargetsPage extends StatelessWidget {
  final targetControl = Get.put(ProjectTargetController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            title: Text(
              'Define Project Targets',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: backGroundColor,
              ),
            ),
          ),
          floatingActionButton: Obx(
            () => targetControl.definePageActive.value
                ? Container(
                    height: 0,
                    width: 0,
                  )
                : FloatingActionButton.extended(
                    onPressed: () {
                      targetControl.definePageActive.value = true;
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Define \nTarget'.tr,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
          body: Stack(
            children: [
              ShowTargetsWidget(),
              Obx(() {
                return targetControl.definePageActive.value
                    ? DefineTargetWidget()
                    : Container(
                        height: 0,
                        width: 0,
                      );
              }),
            ],
          )),
    );
  }
}
