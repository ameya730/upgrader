import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.1_displaytextfield.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class VoDetailsFirstWidget extends StatelessWidget {
  final regControl = new TextEditingController();
  final countryControl = new TextEditingController();
  final stateControl = new TextEditingController();
  final cityControl = new TextEditingController();
  final regMonth = new TextEditingController();
  final regYear = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: whiteColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDisplayField(
                label: 'Organization Registration Type',
                initialValue: '12A',
                popUpField: CustomDropDownInputField(
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
              ),
              CustomDisplayField(
                label: 'Registration Number',
                initialValue: '12A-889AJ-26',
                popUpField: CustomInputField(
                  label: 'Registration Number',
                  initialValue: '12A-889AJ-26',
                ),
              ),
              CustomDisplayField(
                label: 'Registered In',
                initialValue: 'February 2001',
                popUpField: Column(
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
                        initialValue: 'February',
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
                        initialValue: '2001',
                        dropDownTitle: 'Registration Year',
                        pickerController: regYear,
                      ),
                    ),
                  ],
                ),
              ),
              CustomDisplayField(
                label: 'Address Line',
                initialValue: 'Flat 104, 32 Floor, Madripoor',
                popUpField: CustomInputField(
                  label: 'Address Line',
                  initialValue: 'Flat 104, 32 Floor, Madripoor',
                ),
              ),
              CustomDisplayField(
                label: 'Pincode',
                initialValue: '411021',
                popUpField: CustomInputField(
                  label: 'Pincode',
                  initialValue: '411021',
                ),
              ),
              CustomDisplayField(
                label: 'City/District',
                initialValue: 'Pune',
              ),
              CustomDisplayField(
                label: 'State',
                initialValue: 'Maharashtra',
              ),
              CustomDisplayField(
                label: 'Country',
                initialValue: 'Wakanda',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
