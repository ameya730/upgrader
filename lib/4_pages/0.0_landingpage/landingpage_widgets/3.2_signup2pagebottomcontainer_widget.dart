import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_switch_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class SignUpSecondPageBottomContainer extends StatelessWidget {
  final SignUpController signUpControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return signUpControl.otpValidated.value
            ? Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 32.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 24.0,
                            bottom: 24.0,
                          ),
                          child: Text(
                            'Set-up Password',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Obx(
                          () => Container(
                            width: MediaQuery.of(context).size.width,
                            child: CustomFormField(
                              label: 'ENTER PASSWORD'.tr,
                              onChanged: (value) {
                                signUpControl.password.value = value;
                              },
                              hintText: signUpControl.passwordHint.value,
                            ),
                          ),
                        ),
                        Obx(
                          () => Container(
                            width: MediaQuery.of(context).size.width,
                            child: CustomFormField(
                              label: 'RE-ENTER PASSWORD'.tr,
                              onChanged: (value) {
                                signUpControl.reconfirmPassword.value = value;
                              },
                              hintText:
                                  signUpControl.reconfirmPasswordHint.value,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 16.0,
                          ),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: CElevatedButton(
                              buttonLabel: 'Complete Registration'.tr,
                              onPressed: () {
                                signUpControl.passwordValidation();
                                signUpControl.rePasswordValidation();
                                print(
                                    'Error Status is ${signUpControl.errorStatus.value}');
                                if (signUpControl.errorStatus.value == false) {
                                  showDialog(
                                    context: (context),
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          'Registration Complete',
                                          style: TextStyle(
                                            color: blackColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        actions: [
                                          TextButton.icon(
                                            onPressed: () {
                                              LoginSignupSwitchController
                                                  loginSignupSwitchController =
                                                  Get.put(
                                                      LoginSignupSwitchController());
                                              loginSignupSwitchController
                                                  .switchOn.value = false;
                                              Get.offAndToNamed('/landingpage');
                                            },
                                            icon: Icon(Icons.done),
                                            label: Text('Go to Home Page'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                signUpControl.completeRegistration(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container();
      },
    );
  }
}
