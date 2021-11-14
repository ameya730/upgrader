import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerFormField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final onPressed;
  final String? label;
  final String? hintText;

  DatePickerFormField({
    this.onSaved,
    this.onChanged,
    this.onPressed,
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
          child: Stack(
            children: [
              Column(
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
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 25,
                  child: IconButton(
                    icon: Icon(
                      Icons.date_range_outlined,
                    ),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2200),
                      );
                    },
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

class CDatePickerForm extends StatelessWidget {
  final onSaved;
  final onChanged;
  final String? label;
  final String? hintText;
  final bool enabled;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? datecontroller;

  CDatePickerForm({
    this.onSaved,
    this.onChanged,
    this.label,
    this.hintText = '',
    this.enabled = true,
    this.initialValue,
    this.keyboardType,
    this.datecontroller,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
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
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 4.0,
                  left: 8.0,
                ),
                child: TextFormField(
                  controller: datecontroller!,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2200),
                    ).then(
                      (value) => datecontroller!.text =
                          DateFormat('yyyy-MM-dd').format(value!),
                    );
                  },
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
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 4.0,
                  ),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 8.0),
              child: Icon(
                Icons.date_range,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
