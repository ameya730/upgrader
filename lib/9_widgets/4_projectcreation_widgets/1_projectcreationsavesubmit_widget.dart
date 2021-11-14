import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class ProjectCreationSaveSubmitRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(2),
            ),
            label: Text(
              'Save Current Data',
              style: buttonTextStyle,
            ),
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.save,
              color: primaryColor,
            ),
          ),
          TextButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(2),
            ),
            label: Text(
              'Create your Project',
              style: buttonTextStyle,
            ),
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.solidAddressCard,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
