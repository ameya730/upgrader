import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class InfoButton extends StatelessWidget {
  final String? alertTitle;
  final String? content;

  InfoButton({
    this.alertTitle,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                alertTitle!,
                style: headingStyle,
              ),
              content: Text(
                content!,
                style: subHeadingStyle,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Ok',
                    style: headingStyle,
                  ),
                ),
              ],
            );
          },
        );
      },
      icon: CircleAvatar(
        radius: 8,
        backgroundColor: greyTextFormFieldLabel,
        child: Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: Text(
            'i',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: fontFamilyCandara,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
