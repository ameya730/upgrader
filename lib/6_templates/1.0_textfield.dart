import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomFormField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;

  CustomFormField({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = true,
    this.initialValue,
    this.keyboardType,
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
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  height: 25,
                  child: TextFormField(
                    enabled: enabled,
                    onSaved: onSaved,
                    onChanged: onChanged,
                    keyboardType: keyboardType,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 12,
                    ),
                    initialValue: initialValue,
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

class CForm extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;

  CForm({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = true,
    this.initialValue,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Material(
            elevation: 2,
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor.withOpacity(0.5),
                  width: 0.4,
                ),
                color: backGroundColor,
              ),
              child: TextFormField(
                onChanged: onChanged,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 11,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorStyle: TextStyle(
                    fontSize: 0,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
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
        ],
      ),
    );
  }
}
