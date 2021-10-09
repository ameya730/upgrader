import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String? textButtonLabel;
  final onPressed;
  final Color? color;

  CustomTextButton({
    @required this.textButtonLabel,
    @required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        textButtonLabel!,
        style: TextStyle(
          color: color,
          fontSize: 12,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
