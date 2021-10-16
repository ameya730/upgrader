import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.4_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.5_datepickertextfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.6_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class CreateProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Create a New Project'),
          backgroundColor: primaryColor,
        ),
        backgroundColor: backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CustomDropDownField(
                  label: 'Select VO',
                  dropList: [
                    'Voluntary Organization 1',
                    'Voluntary Organization 2',
                    'Voluntary Organization 3',
                  ],
                  onChanged: (value) {},
                  onSaved: (value) {},
                ),
              ),
              CustomFormField(
                label: 'PROJECT NAME IN ENGLISH',
              ),
              CustomFormField(
                label: 'PROJECT NAME IN LOCAL LANGUAGE',
              ),
              CustomMultiLineFormField(
                label: 'PROJECT DESCRIPTION IN ENGLISH',
                minLines: 1,
                maxLines: 4,
                maxLength: 100,
              ),
              CustomMultiLineFormField(
                label: 'PROJECT DESCRIPTION IN LOCAL LANGUAGE',
                minLines: 2,
                maxLines: 4,
                maxLength: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: DatePickerFormField(
                  label: 'Project Start Date',
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: DatePickerFormField(
                  label: 'Project End Date',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 8.0,
                  top: 8.0,
                ),
                child: CElevatedButton(
                  buttonLabel: 'Create Project',
                  onPressed: () {
                    Get.offAndToNamed('/projectpostcreationpage');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
