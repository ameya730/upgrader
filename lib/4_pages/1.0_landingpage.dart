import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';

class LandingPage extends StatelessWidget {
  final box = new GetStorage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Image.asset('lib/7_assets/images/vpeepleicon.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: fontFamilyChaparral,
                              color: greyTextFormFieldLabel,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomInputField(
                          label: 'Mobile No.',
                        ),
                        CustomInputField(
                          label: 'Password',
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
                              onPressed: () {
                                Get.offAndToNamed('/homepage');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonBackGroundColor,
                              ),
                              child: Text('Log-in'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New User?',
                            style: TextStyle(
                              color: greyTextFormFieldLabel,
                              fontFamily: fontFamilyCandara,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton(
                            child: Text(
                              'Register Here',
                              style: TextStyle(
                                color: greyTextFormFieldLabel,
                                fontFamily: fontFamilyCandara,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              final _controller = Get.put(SignUpController());
                              await _controller.resetController();
                              Get.toNamed('/newusersignup');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
