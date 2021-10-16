import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class VODashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/7_assets/workinprogress.gif'),
          Text(
            'Work in Progress',
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
