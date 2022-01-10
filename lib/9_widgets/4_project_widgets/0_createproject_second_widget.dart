import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_infobutton.dart';
import 'package:get/get.dart';

class ProjectCreationSecondWidget extends StatelessWidget {
  final projectType = new TextEditingController();
  final startController = new TextEditingController();
  final endController = new TextEditingController();
  final startTimeController = new TextEditingController();
  final endTimeController = new TextEditingController();
  final ProjectCreationController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: whiteColor,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomInputMultiLineField(
                        label: 'Reason for this Project (max. 200 words)',
                      ),
                      InfoButton(
                        alertTitle: 'Reason for this Project',
                        content: 'Please explain the reason for this project',
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomInputMultiLineField(
                        label: 'Benefits of this Project (max. 200 words)',
                      ),
                      InfoButton(
                        alertTitle: 'Reason for this Project',
                        content: 'Please explain the reason for this project',
                      ),
                    ],
                  ),
                  CustomInputField(
                    label: 'Projected no. of Beneficiaries',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                          _controller.projectPage.value = 0;
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: activeCircleAvatarColor,
                          size: 30,
                        ),
                      ),
                    ),
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
            ],
          ),
        ],
      ),
    );
  }
}
