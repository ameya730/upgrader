import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ValidatePassWordContainer extends StatelessWidget {
  final SignUpController signUpControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [cherryColor, backGroundColor],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              stops: [
                0.1,
                0.1,
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.cancel),
            label: Text('Cancel Registration Process'),
          ),
        ),
      ),
    );
  }
}
