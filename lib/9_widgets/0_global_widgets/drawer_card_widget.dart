import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class DrawerCardAwesomeFontWidget extends StatelessWidget {
  final icon;
  final String? label;
  final onPressed;

  DrawerCardAwesomeFontWidget({
    this.icon,
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
        bottom: 0.0,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          color: backGroundColor,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.55,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              label: Text(
                label!,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onPressed,
              icon: FaIcon(
                icon,
                size: 18,
                color: primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerCardNormalIconWidget extends StatelessWidget {
  final icon;
  final String? label;
  final onPressed;

  DrawerCardNormalIconWidget({
    this.icon,
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
        bottom: 0.0,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          color: backGroundColor,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.55,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              label: Text(
                label!,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 24,
                color: primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
