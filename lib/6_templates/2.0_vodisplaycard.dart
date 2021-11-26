import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VODisplayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 16.0,
        bottom: 16.0,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('viewvodetails');
        },
        child: Material(
          elevation: 5,
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('lib/7_assets/images/hierarchy.png'),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Name of the Voluntary Organization',
                    softWrap: true,
                    style: TextStyle(
                      color: greyTextFormFieldLabel,
                      fontFamily: fontFamilyCandara,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTextFormFieldValue,
                    ),
                  ),
                ),
                Image.asset('lib/7_assets/images/forwardarrow.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
