import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.1_passwordtextfield.dart';
import 'package:vpeepalvoappoct/6_templates/3.0_infobutton.dart';

class PasswordInputWidget extends StatelessWidget {
  final SignUpController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 64.0,
        bottom: 64.0,
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Password',
                        style: TextStyle(
                          fontFamily: fontFamilyCandara,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: greyTextFormFieldLabel,
                        ),
                      ),
                      InfoButton(
                        alertTitle: 'Good Password?',
                        content:
                            'Password should be between 6 to 15 characters. It should have atleast one number, one capital alphabet and one special character',
                      ),
                    ],
                  ),
                ),
                CustomPasswordInputField(
                  label: 'Input Password',
                ),
                CustomPasswordInputField(
                  label: 'Re-Input Password',
                ),
                ElevatedButton(
                  onPressed: () async {
                    await Get.offAllNamed('/landingpage');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: buttonBackGroundColor,
                  ),
                  child: Text('Complete Registration'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
