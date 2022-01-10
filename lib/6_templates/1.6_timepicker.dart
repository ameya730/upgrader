import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class TimePicker extends StatelessWidget {
  final String? label;
  final TextEditingController? timeController;

  TimePicker({
    this.label,
    this.timeController,
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
            child: TextFormField(
              onTap: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then(
                  (value) {
                    print(value);
                    final localizations = MaterialLocalizations.of(context);
                    timeController!.text =
                        localizations.formatTimeOfDay(value!);
                  },
                );
              },
              readOnly: true,
              style: TextStyle(
                fontFamily: fontTextFormFieldLabel,
                fontSize: fontSizeTextFormFieldValue,
                color: blackTextFormFieldValue,
              ),
              controller: timeController!,
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
