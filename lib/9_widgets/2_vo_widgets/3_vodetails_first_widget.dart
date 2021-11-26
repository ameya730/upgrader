import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.1_displaytextfield.dart';
import 'package:get/get.dart';

class VoDetailsFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: whiteColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     TextButton(
              //       onPressed: () {
              //         Get.back();
              //       },
              //       child: Text(
              //         'Back',
              //         style: TextStyle(
              //           color: Colors.red.shade300,
              //           fontWeight: FontWeight.bold,
              //           fontFamily: fontFamilyCandara,
              //           fontSize: 10,
              //         ),
              //       ),
              //     ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: Icon(
              //         Icons.delete,
              //         color: greyTextFormFieldLabel,
              //       ),
              //     ),
              //   ],
              // ),
              CustomDisplayField(
                label: 'Organization Registration Type',
                initialValue: '12A',
              ),
              CustomDisplayField(
                label: 'Registration Number',
                initialValue: '12A-889AJ-26',
              ),
              CustomDisplayField(
                label: 'Registered In',
                initialValue: 'February 1989',
              ),
              CustomDisplayField(
                label: 'Address Line',
                initialValue: 'Flat 104, 32 Floor, Madripoor',
              ),
              CustomDisplayField(
                label: 'Pincode',
                initialValue: '411021',
              ),
              CustomDisplayField(
                label: 'City/District',
                initialValue: 'Pune',
              ),
              CustomDisplayField(
                label: 'State',
                initialValue: 'Maharashtra',
              ),
              CustomDisplayField(
                label: 'Country',
                initialValue: 'Wakanda',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
