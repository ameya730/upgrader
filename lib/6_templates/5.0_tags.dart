import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomTags extends StatelessWidget {
  final onPressed;
  final String? tagName;
  CustomTags({
    this.onPressed,
    this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(whiteColor),
          side: MaterialStateProperty.all(
            BorderSide(color: greyColor, width: 0.3),
          ),
        ),
        child: Text(
          tagName!,
          style: TextStyle(
            color: greyTextFormFieldLabel,
            fontSize: 8,
            fontFamily: fontFamilyCandara,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
