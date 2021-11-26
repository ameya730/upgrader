import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_multilinetextfield.dart';

class ProjectCreationForm extends StatelessWidget {
  final voControl = new TextEditingController();
  // final countryControl = new TextEditingController();
  // final stateControl = new TextEditingController();
  // final cityControl = new TextEditingController();
  // final regMonth = new TextEditingController();
  // final regYear = new TextEditingController();
  // final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: whiteColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomDropDownInputField(
              label: 'Select VO',
              dropDownList: [
                'Voluntary Organization 1',
                'Voluntary Organization 2',
                'Voluntary Organization 3',
                'Voluntary Organization 4',
              ],
              dropDownTitle: 'Select VO',
              pickerController: voControl,
            ),
            CustomInputMultiLineField(
              label: 'Project Description',
            ),
            CustomInputField(
              label: 'Project Benefits',
            ),
            CustomInputField(
              label: 'Resources Required for the Project',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                  onPressed: () {},
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
