import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.0_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_multilinetextfield.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class VOCreationSecondPage extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(180),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 100,
                  child: CircleAvatar(
                    backgroundColor: offWhiteColor,
                    radius: 100,
                    child: Text(
                      'Select Your Logo',
                      style: headingStyle,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomInputMultiLineField(
                      label: 'Describe Your Organization',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                voCreationControl.voPage.value = 0;
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
                              onPressed: () {
                                voCreationControl.voPage.value = 2;
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
