import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_search_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';
import 'package:vpeepalvoappoct/6_templates/5.0_tags.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class AdvancedSearch extends StatelessWidget {
  final SearchController searchController = Get.find();
  final countryControl = new TextEditingController();
  final stateControl = new TextEditingController();
  final cityControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: whiteColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      'Registration Type',
                      style: subHeadingStyle,
                    ),
                  ),
                  Wrap(
                    children: [
                      CustomTags(
                        tagName: 'Not Registered',
                      ),
                      CustomTags(
                        tagName: 'Registered but not certified',
                      ),
                      CustomTags(
                        tagName: 'FCRA',
                      ),
                      CustomTags(
                        tagName: '80G',
                      ),
                      CustomTags(
                        tagName: '32A',
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Column(
                  children: [
                    CustomInputField(
                      label: 'Name of the Organization / Project',
                    ),
                    CustomDropDownInputField(
                      label: 'Country',
                      dropDownList: [
                        'India',
                        'Africa',
                        'Wakanda',
                      ],
                      dropDownTitle: 'Country',
                      pickerController: countryControl,
                    ),
                    CustomDropDownInputField(
                      label: 'State',
                      dropDownList: [
                        'Maharashtra',
                        'Madhya Pradesh',
                        'Himachal Pradesh',
                      ],
                      dropDownTitle: 'State',
                      pickerController: stateControl,
                    ),
                    CustomDropDownInputField(
                      label: 'City/District',
                      dropDownList: [
                        'Pune',
                        'Nagpur',
                        'Mumbai',
                      ],
                      dropDownTitle: 'City/District',
                      pickerController: cityControl,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  searchController.advancedSearch.value = false;
                },
                child: Text(
                  'Cancel',
                  style: subHeadingStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
