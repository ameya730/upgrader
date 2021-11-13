import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';

class VoCreationThirdWidget extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CForm(
            label: 'Address Line',
            onChanged: (value) {
              voCreationControl.voName.value = value;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'Taluka/Suburb',
                  onChanged: (value) {
                    voCreationControl.voStatus.value = value;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'City/District',
                  onChanged: (value) {
                    voCreationControl.registrationNo.value = value;
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'Pin Code',
                  onChanged: (value) {
                    voCreationControl.registrationNo.value = value;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'State',
                  onChanged: (value) {
                    voCreationControl.registrationNo.value = value;
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
