import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomTextField extends StatelessWidget {
  final _focusNode = new FocusNode();
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
  final double left;
  final double right;
  final double top;
  final double bottom;

  CustomTextField({
    this.onChanged,
    this.onSaved,
    this.cLabelText,
    this.validator,
    this.keyboardtype,
    this.controller,
    this.initialvalue,
    this.maxlines = 1,
    this.minlines = 1,
    this.maxlength,
    this.height = 40,
    this.enabled,
    this.width,
    this.icon,
    this.onTap,
    this.vertical = 1,
    this.onFieldSubmitted,
    this.onTTap,
    this.left = 16.0,
    this.right = 16.0,
    this.top = 8.0,
    this.bottom = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        shadowColor: alternateBackGroundColor,
        borderOnForeground: true,
        child: Container(
          height: height,
          width: width,
          child: TextFormField(
            focusNode: _focusNode,
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
              fillColor: backGroundColor.withOpacity(0.2),
              filled: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: vertical!),
              hintText: cLabelText,
              hintStyle: TextStyle(
                color: Colors.black87,
                fontSize: 12,
              ),
              errorStyle: _focusNode.hasFocus
                  ? TextStyle(fontSize: 0, height: 0)
                  : null,
              focusedErrorBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: backGroundColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: backGroundColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: backGroundColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: backGroundColor),
              ),
            ),
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFormField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;

  CustomFormField({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
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
        color: backGroundColor,
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
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  height: 25,
                  child: TextFormField(
                    onSaved: onSaved,
                    onChanged: onChanged,
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
