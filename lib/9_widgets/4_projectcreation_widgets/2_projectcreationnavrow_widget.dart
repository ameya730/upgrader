import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ProjectCreationNavRow extends StatelessWidget {
  final ProjectCreationController projectCreationControl = Get.find();
  final TextStyle _style = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => GestureDetector(
            onTap: () {
              projectCreationControl.projectPage.value = 0;
            },
            child: CircleAvatar(
              backgroundColor: projectCreationControl.projectPage.value == 0
                  ? Colors.black87
                  : primaryColor,
              radius: projectCreationControl.projectPage.value == 0 ? 24 : 20,
              child: Text(
                '1',
                style: _style,
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          color: primaryColor,
          height: 5,
        ),
        Obx(
          () => GestureDetector(
            onTap: () {
              projectCreationControl.projectPage.value = 1;
            },
            child: CircleAvatar(
              backgroundColor: projectCreationControl.projectPage.value == 1
                  ? Colors.black87
                  : primaryColor,
              radius: projectCreationControl.projectPage.value == 1 ? 24 : 20,
              child: Text(
                '2',
                style: _style,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
