import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_dropdowntextfield.dart';

class NewUserSignUpPage extends StatelessWidget {
  final languageControl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('lib/7_assets/images/vpeepleicon.png'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Material(
                  elevation: 5,
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontFamily: fontFamilyChaparral,
                              color: greyTextFormFieldLabel,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomDropDownInputField(
                          label: 'Language',
                          dropDownList: [
                            'English',
                            'Marathi',
                          ],
                          dropDownTitle: 'Language',
                          pickerController: languageControl,
                        ),
                        CustomInputField(
                          label: 'Full Name',
                        ),
                        CustomInputField(
                          label: 'Mobile No.',
                        ),
                        CustomInputField(
                          label: 'E-Mail ID',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 16.0,
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: ElevatedButton(
                              onPressed: () async {
                                Get.offAndToNamed('/otpvalidation');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackGroundColor,
                              ),
                              child: Text('Register'),
                            ),
                          ),
                        ),
                      ],
                    ),
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
