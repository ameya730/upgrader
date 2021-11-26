import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/2_otpvalidation_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/2_passwordinput_widget.dart';

class OTPValidation extends StatelessWidget {
  final SignUpController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => _controller.otpValidated.value
                      ? PasswordInputWidget()
                      : OTPValidationWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
