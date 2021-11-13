import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class SignUpFirstPageWidget extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  final signUpControl = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => CustomFormField(
                  label: 'FIRST NAME'.tr,
                  onChanged: (value) {
                    signUpControl.firstName.value = value;
                    print(signUpControl.firstName.value);
                  },
                  hintText: signUpControl.firstNameHint.value,
                ),
              ),
              Obx(
                () => CustomFormField(
                  label: 'LAST NAME'.tr,
                  onChanged: (value) {
                    signUpControl.lastName.value = value;
                  },
                  hintText: signUpControl.lastNameHint.value,
                ),
              ),
              Obx(
                () => CustomFormField(
                  label: 'EMAIL'.tr,
                  onChanged: (value) async {
                    signUpControl.emailId.value = value;
                  },
                  hintText: signUpControl.emailIdHint.value,
                ),
              ),
              Obx(
                () => CustomFormField(
                  label: 'MOBILE NUMBER'.tr,
                  onChanged: (value) async {
                    signUpControl.mobile.value = value;
                  },
                  hintText: signUpControl.mobileHint.value,
                ),
              ),
              Obx(
                () => CustomFormField(
                  label: 'PINCODE'.tr,
                  onChanged: (value) async {
                    signUpControl.pinCode.value = value;
                  },
                  hintText: signUpControl.pinCodeHint.value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CElevatedButton(
                    buttonLabel: 'Next',
                    onPressed: () async {
                      await signUpControl.firstNameValidation();
                      await signUpControl.lastNameValidation();
                      await signUpControl.emailValidation();
                      await signUpControl.mobileValidation();
                      await signUpControl.pinCodeValidation();
                      await signUpControl.resetErrorPresent();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
