import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class CustomCheckBox extends StatelessWidget {
  final String? mainLabel;
  final String? subLabel;
  final bool? checkStatus;

  CustomCheckBox({
    this.mainLabel,
    this.subLabel,
    this.checkStatus = false,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor.withOpacity(0.5),
            width: 0.4,
          ),
          color: backGroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    mainLabel!,
                    softWrap: true,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    AlertDialog(
                      content: Text(
                        subLabel!,
                        style: buttonTextStyle,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.info_outline,
                    size: 18,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Checkbox(
                value: checkStatus,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
