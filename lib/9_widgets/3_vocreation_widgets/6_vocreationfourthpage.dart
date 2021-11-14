import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_checkbox.dart';

class VoCreationFourthWidget extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCheckBox(
            mainLabel: 'Register your VO',
            subLabel: 'Do you want to register your VO ?',
          ),
          CustomCheckBox(
            mainLabel: 'Certify your VO',
            subLabel: 'Do you want to register your VO ?',
          ),
          CustomCheckBox(
            mainLabel: 'Verify your VO',
            subLabel:
                'Do you want Vpeeple to verified your VO ? People are more likely to trust VOs that are verified',
          ),
        ],
      ),
    );
  }
}
