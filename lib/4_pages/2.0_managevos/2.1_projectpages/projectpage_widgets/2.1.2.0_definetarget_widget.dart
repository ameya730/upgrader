import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.4_projecttargets_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.4_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class DefineTargetWidget extends StatelessWidget {
  final ProjectTargetController targetControl = Get.find();
  final GlobalKey<FormState> _key = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          color: blackColor,
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CustomDropDownField(
                        label: 'Select VO',
                        dropList: [
                          'Funds',
                          'Man-Hours',
                          'Returnable Goods',
                          'Non-Returnable Goods'
                        ],
                        onChanged: (value) {
                          targetControl.targetType.value = value;
                        },
                        onSaved: (value) {
                          targetControl.targetTypeList.add(value);
                        },
                      ),
                    ),
                    Obx(
                      () => CustomFormField(
                        label: 'TARGET NAME'.tr,
                        onChanged: (value) {
                          targetControl.targetName.value = value;
                        },
                        onSaved: (value) {
                          targetControl.targetNameList.add(value);
                        },
                        hintText: targetControl.targetNameHint.value,
                      ),
                    ),
                    Obx(
                      () => CustomMultiLineFormField(
                        label: 'TARGET DESCRIPTION'.tr,
                        onChanged: (value) {
                          targetControl.targetName.value = value;
                        },
                        onSaved: (value) {
                          targetControl.targetDescriptionList.add(value);
                        },
                        hintText: targetControl.targetNameHint.value,
                      ),
                    ),
                    Obx(
                      () => CustomFormField(
                        label: 'TARGET AMOUNT'.tr,
                        onChanged: (value) {
                          targetControl.targetAmount.value = value;
                        },
                        onSaved: (value) {
                          targetControl.targetAmountList.add(value);
                        },
                        keyboardType: TextInputType.number,
                        hintText: targetControl.targetQuantityHint.value,
                      ),
                    ),
                    Obx(
                      () => CustomFormField(
                        label: 'TARGET QUANTITY'.tr,
                        onChanged: (value) {
                          targetControl.targetQuantity.value = value;
                        },
                        onSaved: (value) {
                          targetControl.targetQuantityList.add(value);
                        },
                        keyboardType: TextInputType.number,
                        hintText: targetControl.targetQuantityHint.value,
                      ),
                    ),
                  ],
                ),
                CElevatedButton(
                  buttonLabel: 'Add Target',
                  onPressed: () {
                    _key.currentState!.save();
                    targetControl.definePageActive.value = false;
                  },
                ),
                TextButton.icon(
                  onPressed: () {
                    targetControl.targetName.value = '';
                    targetControl.targetDescription.value = '';
                    targetControl.targetType.value = '';
                    targetControl.definePageActive.value = false;
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: backGroundColor,
                  ),
                  label: Text(
                    'Cancel',
                    style: TextStyle(
                      color: backGroundColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
