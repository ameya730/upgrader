import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final loginError = false.obs;
  final userName = ''.obs;
  final password = ''.obs;
  final loginComment = ''.obs;
  final userNameHint = ''.obs;
  final passwordHint = ''.obs;

  userNameValidation() {
    if (userName.value.isEmpty) {
      userNameHint.value = 'Please input username';
      loginError.value = true;
    } else if (userName.value != 'apss91') {
      userNameHint.value = 'Username incorrect';
      loginError.value = true;
    }
  }

  passwordValidation() {
    if (password.value.isEmpty) {
      passwordHint.value = 'Please input password';
      loginError.value = true;
    } else if (password.value != 'pass@123') {
      passwordHint.value = 'Password Incorrect';
      loginError.value = true;
    }
  }

  loginValidation(BuildContext context) {
    if (loginError.value == false) {
      final box = GetStorage();
      print(userName.value);
      box.write('userName', userName.value);
      print('User is ${box.read('userName')}');
      Get.offAndToNamed('/homepage');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login Failed'),
        ),
      );
    }
    Future.delayed(
      Duration(seconds: 1),
    ).then(
      (value) {
        userNameHint.value = '';
        passwordHint.value = '';
        loginError.value = false;
      },
    );
  }
}
