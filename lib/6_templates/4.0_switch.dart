import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomSwitches extends StatelessWidget {
  final String? switchText;
  final bool? switchBool;
  final Function(bool?)? onChanged;
  CustomSwitches({this.switchText, this.switchBool, @required this.onChanged});
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  appBarColor.withOpacity(0.2),
                  backGroundColor.withOpacity(0.2)
                ],
                end: Alignment.centerLeft,
                begin: Alignment.centerRight,
              ),
              border: Border.all(
                color: backGroundColor,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                switchText!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: switchBool == true ? appBarColor : blackColor),
              ),
            ),
          ),
          Switch.adaptive(
            value: switchBool!,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
