import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';

class VoCreationSecondWidget extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CForm(
            label: 'Email ID for Correspondence',
            onChanged: (value) {
              voCreationControl.voName.value = value;
            },
          ),
          CForm(
            label: 'Mobile Number for Correspondence',
            onChanged: (value) {
              voCreationControl.voStatus.value = value;
            },
          ),
        ],
      ),
    );
  }
}
