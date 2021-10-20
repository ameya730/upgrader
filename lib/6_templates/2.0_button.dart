import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CElevatedButton extends StatelessWidget {
  final String? buttonLabel;
  final void Function()? onPressed;
  final IconData? icon;
  final avatorColor;
  final Color? buttonColor;
  final double width;

  CElevatedButton(
      {@required this.buttonLabel,
      required this.onPressed,
      this.icon,
      this.avatorColor,
      this.buttonColor = const Color(0xff3873F7),
      this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cherryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonLabel!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
