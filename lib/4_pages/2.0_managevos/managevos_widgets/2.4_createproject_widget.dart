import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_dropdown.dart';

class CreateProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomDropDownField(dropList: [
            'Voluntary Organization 1',
            'Voluntary Organization 2',
            'Voluntary Organization 3',
          ]),
          CustomTextField(
            cLabelText: 'Project Name',
          ),
        ],
      ),
    );
  }
}
