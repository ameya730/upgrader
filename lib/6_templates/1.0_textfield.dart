import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

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
