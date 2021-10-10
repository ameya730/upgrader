import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_homelandingbar_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VOBottomBarWidgetButton extends StatelessWidget {
  final HomeLandingBarController bottomController = Get.find();
  final int? indexValue;
  final IconData? icon;
  final String? buttonLabel;
  final onTap;

  VOBottomBarWidgetButton({
    @required this.indexValue,
    @required this.icon,
    @required this.buttonLabel,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 1.0,
            bottom: 1.0,
            left: 3.0,
            right: 3.0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: bottomController.bottomSelectedIndex.value == indexValue
                  ? Color(0xfff9ba32)
                  : alternateBackGroundColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4.0,
                  ),
                  child: Icon(
                    icon,
                    size: 16,
                    color:
                        bottomController.bottomSelectedIndex.value == indexValue
                            ? Colors.black87
                            : Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 4.0,
                  ),
                  child: Text(
                    buttonLabel!,
                    style: TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                      color: bottomController.bottomSelectedIndex.value ==
                              indexValue
                          ? Colors.black87
                          : Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
