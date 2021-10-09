import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.1_login_controller.dart';

class LoginAPIService {
  final dio = new Dio();
  final cancelToken = new CancelToken();
  LoginController loginController = Get.find();

  Future confirmLogin() async {
    if (loginController.userName.value != 'apss91' &&
        loginController.password.value != 'pass@123') {
      loginController.isLoginValid.value = false;
      return loginController.loginComment.value =
          'Incorrect UserName & Password';
    } else if (loginController.userName.value != 'apss91') {
      loginController.isLoginValid.value = false;
      return loginController.loginComment.value = 'Incorrect UserName';
    } else if (loginController.password.value != 'pass@123') {
      loginController.isLoginValid.value = false;
      return loginController.loginComment.value = 'Incorrect Password';
    } else {
      loginController.isLoginValid.value = true;
      return loginController.loginComment.value = 'Login Successful';
    }
  }
}
