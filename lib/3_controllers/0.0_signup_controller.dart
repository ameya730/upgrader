import 'package:get/get.dart';

class SignUpController extends GetxController {
  final fullName = ''.obs;
  final fullNameHint = ''.obs;
  final emailId = ''.obs;
  final emailIdHint = ''.obs;
  final mobile = ''.obs;
  final mobileHint = ''.obs;
  final otpCounter = 120.obs;
  final otpCounterStatus = false.obs;
  final otp = ''.obs;
  final otpHint = ''.obs;
  final otpValidated = false.obs;
  final password = ''.obs;
  final passwordHint = ''.obs;
  final reconfirmPassword = ''.obs;
  final reconfirmPasswordHint = ''.obs;

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  resetController() {
    otpValidated.value = false;
  }
}
