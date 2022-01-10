import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.5_datepicker.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_timepicker.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_infobutton.dart';
import 'package:get/get.dart';

class ProjectCreationFirstWidget extends StatelessWidget {
  final projectType = new TextEditingController();
  final startController = new TextEditingController();
  final endController = new TextEditingController();
  final startTimeController = new TextEditingController();
  final endTimeController = new TextEditingController();
  final ProjectCreationController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: InfoButton(
                              alertTitle: 'About Project Type',
                              content:
                                  'Explanation on what are the different project types',
                            ),
                          ),
                          CustomDropDownInputField(
                            label: 'Project Type',
                            dropDownList: [
                              'Short Term',
                              'Medium Term',
                              'Long Term',
                              'On Going',
                            ],
                            dropDownTitle: 'Project Type',
                            pickerController: projectType,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: DatePicker(
                            datecontroller: startController,
                            label: 'Start Date',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: DatePicker(
                            datecontroller: endController,
                            label: 'End Date',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TimePicker(
                            timeController: startTimeController,
                            label: 'Start Time',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TimePicker(
                            timeController: endTimeController,
                            label: 'End Time',
                          ),
                        ),
                      ],
                    ),
                    CustomInputField(
                      label: 'Name of the Project',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: InfoButton(
                              alertTitle: 'About Project Type',
                              content:
                                  'Explanation on what are the different project types',
                            ),
                          ),
                          CustomInputField(
                            label: 'For Location(s)',
                          ),
                        ],
                      ),
                    ),
                  ],
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
                        _controller.projectPage.value = 1;
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
        ),
      ),
    );
  }
}
