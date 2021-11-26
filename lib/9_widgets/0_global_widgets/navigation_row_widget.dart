import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class NavigationRowWidget extends StatelessWidget {
  final backPress;
  final frontPress;
  NavigationRowWidget({
    this.backPress,
    this.frontPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              onPressed: backPress,
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
              onPressed: frontPress,
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: activeCircleAvatarColor,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
