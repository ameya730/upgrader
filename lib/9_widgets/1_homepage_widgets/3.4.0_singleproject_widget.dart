import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SingleProjectWidget extends StatelessWidget {
  final String? label;
  final IconData? icon;

  SingleProjectWidget({
    this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: CircleAvatar(
                  backgroundColor: backGroundColor,
                  child: Icon(
                    icon,
                    color: primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 2.0,
                  left: 2.0,
                  right: 2.0,
                ),
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
            ],
          )),
    );
  }
}
