import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';

class VoCreationThirdWidget extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  final TextEditingController talukaControl = new TextEditingController();
  final TextEditingController cityControl = new TextEditingController();
  final TextEditingController stateControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.935,
          child: CForm(
            label: 'Address Line',
            onChanged: (value) {
              voCreationControl.voName.value = value;
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: CDropDownForm(
                dropDownList: ['Karvenagar', 'Ganeshnagar', 'Kalyaninagar'],
                dropDownTitle: 'Taluka/Suburb',
                label: 'Taluka/Suburb',
                pickerController: talukaControl,
                onChanged: (value) {
                  talukaControl.text = value;
                  voCreationControl.voStatus.value = value;
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: CDropDownForm(
                dropDownList: ['Pune', 'Nagpur', 'Satara'],
                dropDownTitle: 'City/District',
                label: 'City/District',
                pickerController: cityControl,
                onChanged: (value) {
                  cityControl.text = value;
                  voCreationControl.registrationNo.value = value;
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CForm(
                  label: 'Pin Code',
                  onChanged: (value) {
                    voCreationControl.registrationNo.value = value;
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: CDropDownForm(
                dropDownList: ['Pune', 'Nagpur', 'Satara'],
                dropDownTitle: 'State',
                label: 'City/District',
                pickerController: cityControl,
                onChanged: (value) {
                  cityControl.text = value;
                  voCreationControl.registrationNo.value = value;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
