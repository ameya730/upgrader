import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';

class VoCreationFirstWidget extends StatelessWidget {
  final List monthList = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CForm(
            label: 'VO Name',
            onChanged: (value) {
              voCreationControl.voName.value = value;
            },
          ),
          CForm(
            label: 'VO Status',
            onChanged: (value) {
              voCreationControl.voStatus.value = value;
            },
          ),
          CForm(
            label: 'Registration Number',
            onChanged: (value) {
              voCreationControl.registrationNo.value = value;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'Registration Month',
                  onChanged: (value) {
                    voCreationControl.voStatus.value = value;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'Registration Year',
                  onChanged: (value) {
                    voCreationControl.voStatus.value = value;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
