import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.0_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VOCreationNavRow extends StatelessWidget {
  final _controller = Get.put(VoCreationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => GestureDetector(
              onTap: () {
                _controller.activeCircle.value = 0;
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: _controller.activeCircle.value == 0
                        ? activeCircleAvatarColor
                        : inactiveCircleAvatarColor,
                  ),
                  Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 2,
            color: inactiveCircleAvatarColor,
          ),
          Obx(
            () => GestureDetector(
              onTap: () {
                _controller.activeCircle.value = 1;
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: _controller.activeCircle.value == 1
                        ? activeCircleAvatarColor
                        : inactiveCircleAvatarColor,
                  ),
                  Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 2,
            color: inactiveCircleAvatarColor,
          ),
          Obx(
            () => GestureDetector(
              onTap: () {
                _controller.activeCircle.value = 2;
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: _controller.activeCircle.value == 2
                        ? activeCircleAvatarColor
                        : inactiveCircleAvatarColor,
                  ),
                  Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 2,
            color: inactiveCircleAvatarColor,
          ),
          Obx(
            () => GestureDetector(
              onTap: () {
                _controller.activeCircle.value = 3;
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: _controller.activeCircle.value == 3
                        ? activeCircleAvatarColor
                        : inactiveCircleAvatarColor,
                  ),
                  Text(
                    '4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
