import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class HeadingWithInfoIcon extends StatelessWidget {
  final String? headingText;
  final String? dialogTitle;
  final String? dialogContent;

  HeadingWithInfoIcon({
    this.headingText,
    this.dialogTitle,
    this.dialogContent,
  });

  @override
  Widget build(context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 2.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headingText!,
            style: TextStyle(
                color: blackColor, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        dialogTitle!,
                        style: TextStyle(
                          color: appBarColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Text(
                        dialogContent!,
                        style: TextStyle(
                          color: appBarColor,
                          fontSize: 12,
                        ),
                      ),
                      actions: [
                        CElevatedButton(
                          buttonLabel: 'Ok',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
