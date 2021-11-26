import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class HorizontalScrollingWidget extends StatelessWidget {
  final String? widgetLabel;
  final String? image1;
  final String? image2;
  final String? image3;
  final String? image4;
  final String? image5;
  final String? label1;
  final String? label2;
  final String? label3;
  final String? label4;
  final String? label5;

  HorizontalScrollingWidget({
    this.widgetLabel,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.label1,
    this.label2,
    this.label3,
    this.label4,
    this.label5,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 16.0,
        bottom: 16.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Text(
              widgetLabel!,
              style: headingStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: primaryColor,
                            child: Image.asset(
                              image1!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                label1!,
                                style: TextStyle(
                                  color: greyTextFormFieldLabel,
                                  fontFamily: fontFamilyCandara,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: primaryColor,
                            child: Image.asset(
                              image2!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                label2!,
                                style: TextStyle(
                                  color: greyTextFormFieldLabel,
                                  fontFamily: fontFamilyCandara,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: primaryColor,
                            child: Image.asset(
                              image3!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                label3!,
                                style: TextStyle(
                                  color: greyTextFormFieldLabel,
                                  fontFamily: fontFamilyCandara,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: primaryColor,
                            child: Image.asset(
                              image4!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                label4!,
                                style: TextStyle(
                                  color: greyTextFormFieldLabel,
                                  fontFamily: fontFamilyCandara,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: primaryColor,
                            child: Image.asset(
                              image5!,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                label5!,
                                softWrap: true,
                                style: TextStyle(
                                  color: greyTextFormFieldLabel,
                                  fontFamily: fontFamilyCandara,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
