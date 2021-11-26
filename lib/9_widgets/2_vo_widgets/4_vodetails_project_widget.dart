import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:get/get.dart';

class VoDetailsProjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 4.0,
        bottom: 4.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              onPressed: () async {
                await Get.offAllNamed('/landingpage');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonBackGroundColor,
              ),
              child: Text(
                'Add New Project',
                style: TextStyle(fontSize: 10, color: whiteColor),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              onPressed: () async {
                await Get.offAllNamed('/landingpage');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonBackGroundColor,
              ),
              child: Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 10,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
