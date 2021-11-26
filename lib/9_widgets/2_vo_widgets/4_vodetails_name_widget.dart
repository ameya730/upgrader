import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class VoDetailsNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 2.0,
        bottom: 2.0,
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Anugami Lokrajya Mahabhiyan',
                  style: headingStyle,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.edit,
                    color: greyColor,
                    size: 12,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
