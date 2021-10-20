import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.2_vopages/vopage_widgets/2.2.0_adduser_widget.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:vpeepalvoappoct/6_templates/2.2_floatbutton.dart';
import 'package:get/get.dart';

class VOUserManagementPage extends StatelessWidget {
  final containControl = Get.put(ContainController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: alternateBackGroundColor,
          title: Text(
            'Add User to a VO',
            style: TextStyle(
              color: backGroundColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Obx(() {
              return containControl.toGo.value
                  ? Align(
                      alignment: Alignment.bottomLeft,
                      child: AddUserManagementButton())
                  : Container(
                      height: 0,
                      width: 0,
                    );
            }),
            Obx(
              () => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CustomFloatButton(
                  floatButtonColor: containControl.toGo.value
                      ? cherryColor
                      : alternateBackGroundColor,
                  icon: containControl.toGo.value
                      ? Icon(Icons.cancel)
                      : FaIcon(FontAwesomeIcons.addressBook),
                  floatLabel:
                      containControl.toGo.value ? '\nCancel' : 'Add \nUser'.tr,
                  onPressed: () {
                    containControl.toGo.value = !containControl.toGo.value;
                  },
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 10,
                child: ListTile(
                  title: Text(
                    'Ameya Paranjape',
                    style: TextStyle(
                      fontSize: 12,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'VO Owner',
                    style: TextStyle(
                      fontSize: 10,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
