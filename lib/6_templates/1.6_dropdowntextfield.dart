import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomDropDownField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final List? dropList;

  CustomDropDownField({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.dropList,
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
              Container(
                child: DropdownButtonFormField(
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
                  items: dropList!.map((e) {
                    return DropdownMenuItem(
                      child: Text(
                        e,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                        ),
                      ),
                      value: e,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
