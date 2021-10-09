import 'package:get/get.dart';

class ShowPasswordController extends GetxController {
  final showPassword = true.obs;
  toggle() {
    if (showPassword.value == false) {
      showPassword.value = true;
    } else if (showPassword.value == true) {
      showPassword.value = false;
    }
    update();
  }
}
