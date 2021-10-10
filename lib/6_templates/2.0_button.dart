import 'package:flutter/material.dart';

class CElevatedButton extends StatelessWidget {
  final String? buttonLabel;
  final void Function()? onPressed;
  final IconData? icon;
  final avatorColor;
  final Color? buttonColor;
  CElevatedButton({
    @required this.buttonLabel,
    required this.onPressed,
    this.icon,
    this.avatorColor,
    this.buttonColor = const Color(0xff3873F7),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor!,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            buttonLabel!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
