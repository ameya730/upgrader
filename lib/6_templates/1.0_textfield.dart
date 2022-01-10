import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:get/get.dart';

class CustomInputField extends StatelessWidget {
  final String? label;
  final String initialValue;

  CustomInputField({
    this.label,
    this.initialValue = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
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
                  initialValue: initialValue,
                  style: TextStyle(
                    fontFamily: fontTextFormFieldLabel,
                    fontSize: fontSizeTextFormFieldValue,
                    color: blackTextFormFieldValue,
                  ),
                  decoration: InputDecoration(
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
        ],
      ),
    );
  }
}
