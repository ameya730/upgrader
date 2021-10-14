import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/2_signup2ndpage.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SignUpController extends GetxController {
  final errorStatus = false.obs;
  final firstName = ''.obs;
  final firstNameHint = ''.obs;
  final lastName = ''.obs;
  final lastNameHint = ''.obs;
  final emailId = ''.obs;
  final emailIdHint = ''.obs;
  final mobile = ''.obs;
  final mobileHint = ''.obs;
  final pinCode = ''.obs;
  final pinCodeHint = ''.obs;
  final otp = ''.obs;
  final otpHint = ''.obs;
  final otpValidated = false.obs;
  final password = ''.obs;
  final passwordHint = ''.obs;
  final reconfirmPassword = ''.obs;
  final reconfirmPasswordHint = ''.obs;

  firstNameValidation() {
    if (firstName.isEmpty) {
      firstNameHint.value = 'Please input first name';
      errorStatus.value = true;
    }
    update();
  }

  lastNameValidation() {
    if (lastName.isEmpty) {
      lastNameHint.value = 'Please input last name';
      errorStatus.value = true;
    }
    update();
  }

  emailValidation() {
    if (emailId.isEmpty) {
      emailIdHint.value = 'Please input email Id';
      errorStatus.value = true;
    } else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        .hasMatch(emailId.value)) {
      errorStatus.value = true;
      emailIdHint.value = 'Please input a valid Email';
    }
    update();
  }

  mobileValidation() {
    if (mobile.isEmpty) {
      mobileHint.value = 'Please input mobile number';
      errorStatus.value = true;
    }
  }

  pinCodeValidation() {
    if (pinCode.isEmpty) {
      pinCodeHint.value = 'Please input pincode';
      errorStatus.value = true;
    }
    update();
  }

  resetErrorPresent() {
    Future.delayed(
      Duration(seconds: 1),
    ).then(
      (value) {
        firstNameHint.value = '';
        lastNameHint.value = '';
        emailIdHint.value = '';
        mobileHint.value = '';
        pinCodeHint.value = '';
        if (errorStatus.value == false) {
          Get.offAndToNamed('/signupsecondpage');
        }
        errorStatus.value = false;
        print('kay challay');
      },
    );
  }

  otpValidation() {
    if (otp.isEmpty) {
      otpHint.value = 'Please input the OTP';
      errorStatus.value = true;
    }
    if (errorStatus.value == false) {
      otpValidated.value = true;
    }

    update();
  }

  passwordValidation() {
    if (password.isEmpty) {
      passwordHint.value = 'Please input password';
      errorStatus.value = true;
    }
    update();
  }

  rePasswordValidation() {
    if (reconfirmPassword.isEmpty) {
      reconfirmPasswordHint.value = 'Please input password';
      errorStatus.value = true;
    } else if (reconfirmPassword.value != password.value) {
      reconfirmPasswordHint.value = 'Passwords do not match';
      errorStatus.value = true;
    }
  }

  completeRegistration(BuildContext context) async {
    await Future.delayed(
      Duration(seconds: 1),
    ).then(
      (value) {
        errorStatus.value = false;
        passwordHint.value = '';
        reconfirmPasswordHint.value = '';
      },
    );
  }
}
