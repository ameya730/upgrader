import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class VoCreationSaveSubmitRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          label: Text(
            'Save',
            style: buttonTextStyle,
          ),
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.save,
            color: primaryColor,
          ),
        ),
        TextButton.icon(
          label: Text(
            'Create VO',
            style: buttonTextStyle,
          ),
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.solidAddressCard,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}
