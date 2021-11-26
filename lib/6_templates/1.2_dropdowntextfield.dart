import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomDropDownInputField extends StatelessWidget {
  final String? label;
  final String? dropDownTitle;
  final List? dropDownList;
  final TextEditingController? pickerController;

  CustomDropDownInputField(
      {this.label,
      this.dropDownTitle,
      this.dropDownList,
      this.pickerController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
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
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldValue,
                color: blackTextFormFieldValue,
              ),
              onTap: () {
                showMaterialScrollPicker(
                  title: dropDownTitle!,
                  context: context,
                  items: dropDownList!,
                  selectedItem: pickerController,
                  onChanged: (value) async {
                    pickerController!.text = value.toString();
                  },
                );
              },
              controller: pickerController,
              readOnly: true,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: greyTextFormFieldLabel,
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
