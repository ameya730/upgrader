import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VoCreationNavRow extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
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
        GestureDetector(
          onTap: () {
            voCreationControl.voPage.value = 0;
          },
          child: CircleAvatar(
            child: Text(
              '1',
              style: _style,
            ),
          ),
        ),
        Container(
          width: 50,
          color: primaryColor,
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            voCreationControl.voPage.value = 1;
          },
          child: CircleAvatar(
            child: Text(
              '2',
              style: _style,
            ),
          ),
        ),
        Container(
          width: 50,
          color: primaryColor,
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            voCreationControl.voPage.value = 2;
          },
          child: CircleAvatar(
            child: Text(
              '3',
              style: _style,
            ),
          ),
        ),
        Container(
          width: 50,
          color: primaryColor,
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            voCreationControl.voPage.value = 3;
          },
          child: CircleAvatar(
            child: Text(
              '4',
              style: _style,
            ),
          ),
        ),
      ],
    );
  }
}
