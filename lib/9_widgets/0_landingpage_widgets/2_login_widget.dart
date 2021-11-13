import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_password_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/0.1_login_controller.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.1_passwordtextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:vpeepalvoappoct/6_templates/2.1_textbutton.dart';

class LoginWidget extends StatelessWidget {
  final passwordController = Get.put(ShowPasswordController());
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 8.0,
      ),
      child: Container(
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              Obx(
                () => CustomFormField(
                  label: 'USERNAME'.tr,
                  onChanged: (value) {
                    loginController.userName.value = value;
                  },
                  hintText: loginController.userNameHint.value,
                ),
              ),
              Obx(
                () => CustomPasswordField(
                  label: 'PASSWORD'.tr,
                  onChanged: (value) {
                    loginController.password.value = value;
                  },
                  hintText: loginController.passwordHint.value,
                  onPressed: () {
                    passwordController.toggle();
                  },
                  icon: passwordController.showPassword.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  obscureText: passwordController.showPassword.value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CElevatedButton(
                      buttonLabel: 'Log-In'.tr,
                      onPressed: () {
                        loginController.userNameValidation();
                        loginController.passwordValidation();
                        loginController.loginValidation(context);
                      }
                      // },
                      ),
                ),
              ),
              CustomTextButton(
                textButtonLabel: 'Forgot Password ?'.tr,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
