import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class LandingPageSwitchWidget extends StatelessWidget {
  final LoginSignupSwitchController loginSwitch = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Obx(() {
          return loginSwitch.switchOn.value == false
              ? Text(
                  'Login'.tr,
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: mainTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(
                  'Login'.tr,
                  style: TextStyle(color: mainTextColor),
                );
        }),
        Obx(
          () => Switch(
            value: loginSwitch.switchOn.value,
            onChanged: (value) {
              loginSwitch.switchOn(value);
            },
            activeColor: Theme.of(context).primaryColor,
            inactiveThumbColor: Theme.of(context).primaryColor,
          ),
        ),
        Obx(
          () {
            return loginSwitch.switchOn.value == true
                ? Text(
                    'Register'.tr,
                    textScaleFactor: 2,
                    style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    'Register'.tr,
                    style: TextStyle(color: mainTextColor),
                  );
          },
        ),
      ],
    );
  }
}
