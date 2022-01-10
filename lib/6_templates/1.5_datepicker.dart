import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class DatePicker extends StatelessWidget {
  final String? label;
  final TextEditingController? datecontroller;

  DatePicker({
    this.label,
    this.datecontroller,
  });

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
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2200),
                ).then(
                  (value) {
                    datecontroller!.text =
                        DateFormat('yyyy-MM-dd').format(value!);
                  },
                );
              },
              readOnly: true,
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldValue,
                color: blackTextFormFieldValue,
              ),
              controller: datecontroller!,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
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
