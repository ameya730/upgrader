import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomPasswordInputField extends StatelessWidget {
  final String? label;
  final bool obscureText;
  final iconOnPressed;
  final IconData? visibilityIcon;

  CustomPasswordInputField({
    this.label,
    this.obscureText = false,
    this.iconOnPressed,
    this.visibilityIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: TextStyle(
              fontFamily: fontTextFormFieldLabel,
              fontSize: fontSizeTextFormFieldLabel,
              color: greyTextFormFieldLabel,
            ),
          ),
          Container(
            height: 25,
            child: TextFormField(
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldValue,
                color: blackTextFormFieldValue,
              ),
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: iconOnPressed,
                  icon: Icon(
                    visibilityIcon,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                    width: 0.4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
