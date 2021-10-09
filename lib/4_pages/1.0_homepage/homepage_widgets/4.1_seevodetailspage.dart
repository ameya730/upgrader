import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_vobasicdetails_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_viewdetailstextfield.dart';

class SeeVODetailsPage extends StatelessWidget {
  final VODetailsController voDetailsController = Get.find();
  @override
  Widget build(BuildContext context) {
    int i = voDetailsController.voId.value;
    var vDetails = voDetailsController.voDetailsList[i];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text(
            vDetails.vOName.toString(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    vDetails.vOPhoto.toString(),
                  ),
                  radius: 80,
                ),
                VoDetailsField(
                  labelText: 'Name',
                  initialValue: vDetails.vOName,
                ),
                VoDetailsField(
                  labelText: 'Certificate',
                  initialValue: vDetails.certificateType,
                ),
                VoDetailsField(
                  labelText: 'Registration Number',
                  initialValue: vDetails.registrationNumber == ''
                      ? 'Not Registered'
                      : vDetails.registrationNumber,
                ),
                VoDetailsField(
                  labelText: 'VO Description',
                  initialValue: vDetails.vODescription,
                ),
                VoDetailsField(
                  labelText: 'Email',
                  initialValue: vDetails.vOEmailID,
                ),
                VoDetailsField(
                  labelText: 'Contact Number',
                  initialValue: vDetails.contactNumber,
                ),
                VoDetailsField(
                  labelText: 'Taluka/Suburb',
                  initialValue: vDetails.district,
                ),
                VoDetailsField(
                  labelText: 'City/District',
                  initialValue: vDetails.city,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
