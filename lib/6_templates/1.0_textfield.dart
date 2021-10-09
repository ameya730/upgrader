import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomTextField extends StatelessWidget {
  final onChanged;
  final onSaved;
  final String? cLabelText;
  final validator;
  final keyboardtype;
  final controller;
  final String? initialvalue;
  final int? maxlines;
  final int? minlines;
  final int? maxlength;
  final double? height;
  final bool? enabled;
  final double? width;
  final Widget? icon;
  final Function? onTap;
  final double? vertical;
  final onFieldSubmitted;
  final onTTap;

  CustomTextField({
    this.onChanged,
    this.onSaved,
    this.cLabelText,
    this.validator,
    this.keyboardtype,
    this.controller,
    this.initialvalue,
    this.maxlines,
    this.minlines,
    this.maxlength,
    this.height,
    this.enabled,
    this.width,
    this.icon,
    this.onTap,
    this.vertical = 0.0,
    this.onFieldSubmitted,
    this.onTTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Container(
        height: height,
        width: width,
        child: TextFormField(
          onTap: onTTap,
          initialValue: initialvalue,
          onSaved: onSaved,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          keyboardType: keyboardtype,
          controller: controller,
          minLines: minlines,
          maxLines: maxlines,
          maxLength: maxlength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          enabled: enabled,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: icon,
            fillColor: textFieldColor.withOpacity(0.2),
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: vertical!),
            hintText: cLabelText,
            hintStyle: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
          ),
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
