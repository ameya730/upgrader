import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class AddUserManagementButton extends StatelessWidget {
  final containControl = Get.put(ContainController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CElevatedButton(
            buttonLabel: 'Add User',
            onPressed: () {},
          ),
          CustomFormField(
            label: 'USER NAME',
            hintText: 'Search for the user',
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 42.0),
            child: CustomDropDownField(
              dropList: [
                'VO Owner',
                'Project Manager',
                'Project Co-ordinator',
              ],
              label: 'ROLE',
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}

class ContainController extends GetxController {
  final toGo = false.obs;
}
