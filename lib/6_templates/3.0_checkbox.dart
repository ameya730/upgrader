import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
          elevation: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                child: Text(
                  mainLabel!,
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 16.0),
                child: Container(
                  child: Text(
                    subLabel!,
                    style: TextStyle(fontSize: 8),
                  ),
                ),
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
      ),
    );
  }
}
