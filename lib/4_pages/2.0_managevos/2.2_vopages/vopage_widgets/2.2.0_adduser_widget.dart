import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.4_vousermanage_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class AddUserManagementButton extends StatefulWidget {
  @override
  _AddUserManagementButtonState createState() =>
      _AddUserManagementButtonState();
}

class _AddUserManagementButtonState extends State<AddUserManagementButton>
    with TickerProviderStateMixin {
  final containControl = Get.put(ContainController());
  final GlobalKey<FormState> _key = new GlobalKey();

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
      child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CElevatedButton(
              buttonLabel: 'Add User',
              onPressed: () {
                _key.currentState!.save();
                containControl.toGo.value = false;
              },
            ),
            CustomFormField(
              label: 'USER NAME',
              hintText: 'Search for the user',
              onSaved: (value) {
                containControl.userNameList.add(value);
              },
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
                onSaved: (value) {
                  containControl.userRoleList.add(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
