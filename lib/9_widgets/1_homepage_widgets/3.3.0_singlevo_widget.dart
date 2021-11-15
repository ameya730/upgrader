import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SingleVOWidget extends StatelessWidget {
  final String? label;

  SingleVOWidget({
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 10,
              child: Text(
                'Logo',
                style: TextStyle(color: backGroundColor, fontSize: 6),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              bottom: 4.0,
            ),
            child: Container(
              width: 80,
              child: Text(
                label!,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
