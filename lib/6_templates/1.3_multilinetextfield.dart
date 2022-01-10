import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomInputMultiLineField extends StatelessWidget {
  final String? label;

  CustomInputMultiLineField({
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label!,
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldLabel,
                color: greyTextFormFieldLabel,
              ),
            ),
          ),
          TextFormField(
            style: TextStyle(
              fontFamily: fontTextFormFieldLabel,
              fontSize: fontSizeTextFormFieldValue,
              color: blackTextFormFieldValue,
            ),
            minLines: 5,
            maxLines: null,
            maxLength: 2048,
            decoration: InputDecoration(
              helperStyle: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldLabel,
                color: greyTextFormFieldLabel,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                  width: 0.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
