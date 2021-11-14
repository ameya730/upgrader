import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class CustomMultiLineFormField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final double? height;

  CustomMultiLineFormField({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.height = 80,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 16.0,
        right: 16.0,
      ),
      child: Material(
        elevation: 5,
        color: offWhiteColor,
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  height: height,
                  child: TextFormField(
                    onSaved: onSaved,
                    onChanged: onChanged,
                    minLines: minLines,
                    maxLines: maxLines,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(100),
                    ],
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                      hintText: hintText!,
                      hintStyle: TextStyle(
                        color: cherryColor,
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      errorStyle: TextStyle(
                        fontSize: 8,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CMultiLineForm extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;

  CMultiLineForm({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = true,
    this.initialValue,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.maxLength,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor.withOpacity(0.5),
                  width: 0.4,
                ),
                color: backGroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 4.0,
                  left: 8.0,
                ),
                child: TextFormField(
                  onChanged: onChanged,
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 11,
                  ),
                  minLines: 3,
                  maxLines: 3,
                  maxLength: 100,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorStyle: TextStyle(
                      fontSize: 0,
                      height: 0,
                    ),
                    counterStyle: buttonTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
            top: 8.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 4.0,
                right: 4.0,
              ),
              child: Text(
                label!,
                style: TextStyle(
                  color: backGroundColor,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
