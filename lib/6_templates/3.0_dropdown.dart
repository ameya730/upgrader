import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({
    @required this.dropList,
    this.onSaved,
    this.onChanged,
    this.validationtext,
    this.hinttext,
    this.height = 75,
    this.width,
    this.left = 16.0,
    this.right = 16.0,
    this.top = 8.0,
    this.bottom = 8.0,
  });

  final List? dropList;
  final onSaved;
  final onChanged;
  final String? validationtext;
  final String? hinttext;
  final double? height;
  final double? width;
  final double left;
  final double right;
  final double top;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: Container(
        height: height,
        width: width,
        child: DropdownButtonFormField(
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
          decoration: InputDecoration(
            fillColor: textFieldColor.withOpacity(0.2),
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: textFieldColor),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
          items: dropList!.map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList(),
          onChanged: onChanged,
          onSaved: onSaved,
          validator: (value) {
            if (value == null) {
              return validationtext;
            }
            return null;
          },
        ),
      ),
    );
  }
}
