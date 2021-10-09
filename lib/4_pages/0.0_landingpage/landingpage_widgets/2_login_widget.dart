import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/1_api_services/0.1_login_api.dart';
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
              CustomTextField(
                cLabelText: 'Input EmailID/Phone Number'.tr,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please input email ID or phone number'.tr;
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  loginController.userName.value = value;
                },
              ),
              Obx(
                () => PasswordTextField(
                  cLabelText: 'Input Password'.tr,
                  icon: IconButton(
                    onPressed: () {
                      passwordController.toggle();
                    },
                    icon: Obx(
                      () {
                        return passwordController.showPassword.value
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off);
                      },
                    ),
                  ),
                  obscureText: passwordController.showPassword.value,
                  onSaved: (value) {
                    loginController.password.value = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please input password';
                    } else {
                      return null;
                    }
                  },
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
                      if (validateAndSave()) {
                        final LoginAPIService loginAPIService =
                            new LoginAPIService();
                        loginAPIService.confirmLogin().then((value) {
                          if (loginController.isLoginValid.value) {
                            print(
                              loginController.loginComment.value.toString(),
                            );
                            Get.offAndToNamed('/homepage');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                content: Text(
                                  loginController.loginComment.value.toString(),
                                ),
                              ),
                            );
                          }
                        });
                      } else {
                        print('failure');
                        ScaffoldMessenger.of(context).showSnackBar(
                          new SnackBar(
                            content: Text(
                              loginController.loginComment.value.toString(),
                            ),
                          ),
                        );
                      }
                    },
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

  bool validateAndSave() {
    final form = _globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
