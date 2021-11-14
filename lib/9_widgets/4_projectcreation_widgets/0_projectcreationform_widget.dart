import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.4_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.5_datepickertextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';

class ProjectCreationFormWidget extends StatelessWidget {
  final TextEditingController startDateControl = new TextEditingController();
  final TextEditingController endDateControl = new TextEditingController();
  final TextEditingController projectTypeControl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CForm(
            label: 'Project Name',
          ),
          CMultiLineForm(
            label: 'Project Description',
          ),
          CDropDownForm(
            label: 'Project Type',
            pickerController: projectTypeControl,
            dropDownList: [
              'Short Term',
              'Long Term',
              'EverGreen',
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: CDatePickerForm(
                  label: 'Start Date',
                  datecontroller: startDateControl,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: CDatePickerForm(
                  label: 'End Date',
                  datecontroller: endDateControl,
                ),
              ),
            ],
          ),
          CMultiLineForm(
            label: 'Project Benefit',
          ),
          CForm(
            label: 'People required for the project',
          ),
        ],
      ),
    );
  }
}
