import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class OTPInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: greyColor.withOpacity(0.7),
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
              textAlign: TextAlign.center,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                new LengthLimitingTextInputFormatter(1),
              ],
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
