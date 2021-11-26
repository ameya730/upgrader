import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SearchInputField extends StatelessWidget {
  final String? label;
  final onChanged;

  SearchInputField({
    this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25,
            child: TextFormField(
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldValue,
                color: blackTextFormFieldValue,
              ),
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: label!,
                hintStyle: TextStyle(
                  fontFamily: fontTextFormFieldLabel,
                  fontSize: 12,
                  color: blackTextFormFieldValue,
                ),
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
    );
  }
}
