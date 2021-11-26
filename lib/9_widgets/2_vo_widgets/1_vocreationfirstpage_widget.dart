import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.0_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_infobutton.dart';

class VOCreationFirstPage extends StatelessWidget {
  final regControl = new TextEditingController();
  final countryControl = new TextEditingController();
  final stateControl = new TextEditingController();
  final cityControl = new TextEditingController();
  final regMonth = new TextEditingController();
  final regYear = new TextEditingController();
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: whiteColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomDropDownInputField(
              label: 'Organization Registration Type',
              dropDownList: [
                'Not Registered',
                'Registered',
                'FCRA Certified',
                '80G Certified',
              ],
              dropDownTitle: 'Organization Registration Type',
              pickerController: regControl,
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: InfoButton(
                    alertTitle: 'About Registration Number',
                    content: 'The details about registration number XXX',
                  ),
                ),
                CustomInputField(
                  label: 'Registration Number',
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: CustomDropDownInputField(
                    label: 'Registration Month',
                    dropDownList: [
                      'January',
                      'February',
                      'March',
                      'April',
                    ],
                    dropDownTitle: 'Registration Month',
                    pickerController: regMonth,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: CustomDropDownInputField(
                    label: 'Registration Year',
                    dropDownList: [
                      '2000',
                      '2001',
                      '2002',
                      '2003',
                      '2004',
                      '2005',
                      '2006',
                      '2007',
                    ],
                    dropDownTitle: 'Registration Year',
                    pickerController: regYear,
                  ),
                ),
              ],
            ),
            CustomInputField(
              label: 'Full Name of the Organization',
            ),
            CustomInputField(
              label: 'Address Line',
            ),
            CustomDropDownInputField(
              label: 'Country',
              dropDownList: [
                'India',
                'Africa',
                'Wakanda',
              ],
              dropDownTitle: 'Country',
              pickerController: countryControl,
            ),
            CustomDropDownInputField(
              label: 'State',
              dropDownList: [
                'Maharashtra',
                'Madhya Pradesh',
                'Himachal Pradesh',
              ],
              dropDownTitle: 'State',
              pickerController: stateControl,
            ),
            CustomInputField(
              label: 'Pincode',
            ),
            CustomDropDownInputField(
              label: 'City/District',
              dropDownList: [
                'Pune',
                'Nagpur',
                'Mumbai',
              ],
              dropDownTitle: 'City/District',
              pickerController: cityControl,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 5,
                color: whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                  side: BorderSide(
                    color: activeCircleAvatarColor,
                    width: 0.4,
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    voCreationControl.voPage.value = 1;
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: activeCircleAvatarColor,
                    size: 30,
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
