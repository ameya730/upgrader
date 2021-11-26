import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.1_displaytextfield.dart';
import 'package:get/get.dart';

class VoDetailsSecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('lib/7_assets/images/vo1.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: CustomDisplayField(
                label: 'Organization Description',
                formHeight: null,
                maxlines: null,
                initialValue:
                    'The Anugami Lokrajya Mahabhiyan organization stands for providing support to all people in the world on humanitarian grounds.',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
