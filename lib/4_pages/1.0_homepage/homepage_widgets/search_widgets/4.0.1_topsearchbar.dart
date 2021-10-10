import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/1.1_vobasicdetails_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_searchtextfield.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class TopSearchBar extends StatelessWidget {
  final VODetailsController voDetailsController = Get.find();
  final GlobalKey<FormState> _searchKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: backGroundColor.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: Form(
          key: _searchKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(
                  labelText: 'VO Name',
                  onChanged: (value) {
                    voDetailsController.voNameSearch.value = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(
                  labelText: 'Certificate Type',
                  onChanged: (value) {
                    voDetailsController.certificateSearch.value = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(
                  labelText: 'Registration Number',
                  onChanged: (value) {
                    voDetailsController.registrationNumSearch.value = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CElevatedButton(
                  buttonLabel: 'Search'.tr,
                  onPressed: () async {
                    if (saveAndValidate()) {
                      await voDetailsController.detailedFilterList();
                      voDetailsController.searchEnabled.value = false;
                    } else {
                      print('No data returned');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool saveAndValidate() {
    final form = _searchKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
