import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class SignUpSecondPageTopContainer extends StatelessWidget {
  final SignUpController signUpControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
          ),
          child: Text(
            'User Registration',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 32.0),
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 24.0,
                              bottom: 24.0,
                            ),
                            child: Text(
                              'OTP Validation',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Obx(
                            () => Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: CustomFormField(
                                label: 'ENTER OTP'.tr,
                                onChanged: (value) {
                                  signUpControl.otp.value = value;
                                  print(signUpControl.otp.value);
                                },
                                hintText: signUpControl.otpHint.value,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CElevatedButton(
                                buttonLabel: 'Next',
                                onPressed: () async {
                                  await signUpControl.otpValidation();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
