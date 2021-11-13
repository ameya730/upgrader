import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.2_settings_controller.dart';
import 'package:vpeepalvoappoct/6_templates/4.0_switch.dart';
import 'package:vpeepalvoappoct/6_templates/5.0_headingwithinfoicon.dart';

class SettingsWidget extends StatelessWidget {
  final settingsController = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeadingWithInfoIcon(
              dialogTitle: 'Customize Notifications',
              dialogContent:
                  'Choose what notification you wish to receive on your mobile',
              headingText: 'Info on customize notifications',
            ),
            Obx(() {
              return CustomSwitches(
                switchBool: settingsController.voNotification.value,
                switchText: settingsController.voNotificationText.value,
                onChanged: (value) {
                  settingsController.voNotification.value = value as bool;
                  settingsController.voNotificationToggle();
                },
              );
            }),
            Obx(() {
              return CustomSwitches(
                switchBool: settingsController.projectNotification.value,
                switchText: settingsController.projectNotificationText.value,
                onChanged: (value) {
                  settingsController.projectNotification.value = value as bool;
                  settingsController.projectNotificationToggle();
                },
              );
            }),
            Obx(() {
              return CustomSwitches(
                switchBool: settingsController.favVoNotification.value,
                switchText: settingsController.favVoNotificationText.value,
                onChanged: (value) {
                  settingsController.favVoNotification.value = value as bool;
                  settingsController.favVoNotificationToggle();
                },
              );
            }),
            Obx(() {
              return CustomSwitches(
                switchBool: settingsController.favProjectNotification.value,
                switchText: settingsController.favProjectNotificationText.value,
                onChanged: (value) {
                  settingsController.favProjectNotification.value =
                      value as bool;
                  settingsController.favProjectNotificationToggle();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
