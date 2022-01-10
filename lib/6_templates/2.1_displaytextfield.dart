import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomDisplayField extends StatelessWidget {
  final String? label;
  final String? initialValue;
  final double? formHeight;
  final int? maxlines;
  final popUpField;

  CustomDisplayField({
    this.label,
    this.initialValue,
    this.formHeight = 25,
    this.maxlines = 1,
    this.popUpField,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
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
                height: formHeight,
                child: TextFormField(
                  maxLines: maxlines,
                  style: TextStyle(
                    fontFamily: fontTextFormFieldLabel,
                    fontSize: fontSizeTextFormFieldValue,
                    color: blackTextFormFieldValue,
                  ),
                  readOnly: true,
                  initialValue: initialValue!,
                  decoration: InputDecoration(
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
          Padding(
            padding: const EdgeInsets.only(
              top: 2.0,
              right: 2.0,
            ),
            child: GestureDetector(
              child: Icon(
                Icons.edit,
                color: greyColor,
                size: 12,
              ),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: popUpField,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: TextButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(5),
                                    backgroundColor:
                                        MaterialStateProperty.all(greyColor),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: fontFamilyCandara,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: TextButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(5),
                                    backgroundColor:
                                        MaterialStateProperty.all(primaryColor),
                                  ),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: fontFamilyCandara,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
