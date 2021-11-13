import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VoCardListTile extends StatelessWidget {
  final String? title;
  final String? subTitle;
  VoCardListTile({
    this.title,
    this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                subTitle!,
                softWrap: true,
                style: TextStyle(
                  fontSize: 8,
                  color: blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
