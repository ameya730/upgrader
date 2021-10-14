import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/3.1_signup2pagetopcontainer_widget.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/3.3_cancelregistration.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/landingpage_widgets/3.2_signup2pagebottomcontainer_widget.dart';

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
