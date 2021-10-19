import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class DisplayField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;

  DisplayField({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = false,
    this.initialValue,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
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
                border: InputBorder.none,
                hintText: hintText!,
                hintStyle: TextStyle(
                  color: cherryColor,
                  fontSize: 12,
                ),
                errorStyle: TextStyle(
                  fontSize: 8,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
