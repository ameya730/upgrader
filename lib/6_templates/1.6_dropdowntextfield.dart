import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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

class CDropDownForm extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? pickerController;
  final List dropDownList;
  final String? dropDownTitle;

  CDropDownForm({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = true,
    this.initialValue,
    this.keyboardType,
    this.pickerController,
    required this.dropDownList,
    this.dropDownTitle,
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
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor.withOpacity(0.5),
                  width: 0.4,
                ),
                color: backGroundColor,
              ),
              child: TextFormField(
                onTap: () {
                  showMaterialScrollPicker(
                      title: dropDownTitle!,
                      context: context,
                      items: dropDownList,
                      selectedItem: pickerController,
                      onChanged: (value) async {
                        pickerController!.text = value.toString();
                      });
                },
                controller: pickerController!,
                onChanged: onChanged,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 11,
                ),
                readOnly: true,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 24.0),
                child: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
