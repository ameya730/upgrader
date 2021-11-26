import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_signup_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_otpinputfield.dart';

class OTPValidationWidget extends StatelessWidget {
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
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'OTP has been sent to 9898989898',
                  style: TextStyle(
                    color: greyTextFormFieldLabel,
                    fontFamily: fontFamilyCandara,
                    fontSize: fontSizeTextFormFieldValue,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPInputField(),
                  OTPInputField(),
                  OTPInputField(),
                  OTPInputField(),
                ],
              ),
              Countdown(
                seconds: _controller.otpCounter.value,
                onFinished: () {
                  _controller.otpCounterStatus.value = true;
                },
                build: (BuildContext context, double time) {
                  return Text(
                    '${time.toInt().toString()} \nseconds',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: greyTextFormFieldLabel,
                      fontFamily: fontFamilyCandara,
                      fontSize: fontSizeTextFormFieldValue,
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _controller.otpValidated.value = true;
                  },
                  style: ElevatedButton.styleFrom(
                    primary: buttonBackGroundColor,
                  ),
                  child: Obx(
                    () => _controller.otpCounterStatus.value
                        ? Text('Re-Send')
                        : Text('Verify'),
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
