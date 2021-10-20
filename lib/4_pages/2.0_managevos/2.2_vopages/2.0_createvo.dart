import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.4_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:get/get.dart';

class CreateVO extends StatelessWidget {
  final voCreationController = Get.put(VoCreationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Create a new VO'),
          backgroundColor: primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CustomDropDownField(
                  label: 'Certificate/Registration Type'.tr,
                  dropList: [
                    'Not Registered',
                    'Registered but not certified',
                    '12A',
                    '80G',
                    '35AC',
                    'FCRA',
                  ],
                  onChanged: (value) {
                    value != 'Not Registered'
                        ? voCreationController.isVORegistered.value = true
                        : voCreationController.isVORegistered.value = false;
                  },
                ),
              ),
              Obx(
                () {
                  return voCreationController.isVORegistered.value
                      ? CustomFormField(
                          label: 'REGISTRATION/CERTIFICATE NUMBER',
                        )
                      : Container(
                          height: 0,
                          width: 0,
                        );
                },
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: CustomDropDownField(
                      label: 'MONTH OF ESTABLISHMENT'.tr,
                      dropList: [
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
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: CustomDropDownField(
                      label: 'YEAR OF ESTABLISHMENT'.tr,
                      dropList: [
                        '2011',
                        '2012',
                        '2013',
                        '2014',
                        '2015',
                        '2016',
                        '2017',
                        '2018',
                        '2019',
                        '2020',
                        '2021',
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              CustomMultiLineFormField(
                label: 'ORGANIZATION NAME IN ENGLISH',
              ),
              CustomMultiLineFormField(
                label: 'ORGANIZATION NAME IN LOCAL LANGUAGE',
              ),
              Container(
                child: CustomDropDownField(
                  label: 'STATE'.tr,
                  dropList: [
                    'Maharashtra',
                    'Madhya Pradesh',
                    'Himachal Pradesh'
                  ],
                  onChanged: (value) {},
                ),
              ),
              Container(
                child: CustomDropDownField(
                  label: 'CITY/DISTRICT'.tr,
                  dropList: [
                    'Pune',
                    'Nagpur',
                    'Yavatmal',
                  ],
                  onChanged: (value) {},
                ),
              ),
              CustomMultiLineFormField(
                label: 'POSTAL ADDRESS',
              ),
              CustomFormField(
                label: 'OFFICIAL EMAIL ID',
              ),
              CustomFormField(label: 'OFFICIAL MOBILE NUMBER'),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                  bottom: 8.0,
                  top: 8.0,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CElevatedButton(
                    buttonLabel: 'Create VO',
                    onPressed: () {
                      Get.offAndToNamed('/vopostcreationpage');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
