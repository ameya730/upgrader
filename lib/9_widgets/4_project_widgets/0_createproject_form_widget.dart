import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/9_widgets/4_project_widgets/0_createproject_first_widget.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/9_widgets/4_project_widgets/0_createproject_second_widget.dart';

class ProjectCreationForm extends StatelessWidget {
  final voControl = new TextEditingController();
  final ProjectCreationController _controller = Get.find();
  final List _pages = [
    ProjectCreationFirstWidget(),
    ProjectCreationSecondWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: Material(
            elevation: 5,
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: CustomDropDownInputField(
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
            ),
          ),
        ),
        Obx(
          () => _pages[_controller.projectPage.value],
        ),
      ],
    );
  }
}
