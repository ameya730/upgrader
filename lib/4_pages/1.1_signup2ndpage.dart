import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_landingpage_widgets/3.1_signup2pagetopcontainer_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/0_landingpage_widgets/3.2_signup2pagebottomcontainer_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/0_landingpage_widgets/3.3_cancelregistration.dart';

class SignUpSecondPageWidget extends StatelessWidget {
  final SignUpController signUpControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SignUpSecondPageTopContainer(),
            SignUpSecondPageBottomContainer(),
            ValidatePassWordContainer(),
          ],
        ),
      ),
    );
  }
}
