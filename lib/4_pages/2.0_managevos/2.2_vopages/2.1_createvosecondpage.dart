import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_checkbox.dart';

class VoPostCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your VO has been created',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
            CustomCheckBox(
              mainLabel: 'Register your VO',
              subLabel:
                  'Tick this if you require assisstance in registering a VO.',
            ),
            CustomCheckBox(
              mainLabel: 'VO Certification',
              subLabel: 'Tick this box if you want to certifiy your VO.',
            ),
            CustomCheckBox(
              mainLabel: 'Verify VO',
              subLabel:
                  'Tick this box if you want us to verify your VO for you. People tend to prefer verified VOs while making donations',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CElevatedButton(
                    width: 150,
                    buttonLabel: 'VO User Management',
                    onPressed: () {
                      Get.toNamed('/vousermanagement');
                    },
                  ),
                  CElevatedButton(
                    width: 150,
                    buttonLabel: 'Create a Project',
                    onPressed: () {
                      Get.toNamed('/createproject');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
              ),
              child: Card(
                elevation: 15,
                child: TextButton.icon(
                  onPressed: () {
                    Get.offAndToNamed('/manageVOs');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: blackColor,
                    size: 28,
                  ),
                  label: Text(
                    'Return to VO Page',
                    softWrap: true,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
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
