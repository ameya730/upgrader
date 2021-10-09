import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXNetworkManager extends GetxController {
  final box = new GetStorage();

  @override
  void onInit() {
    //Set-up internet connection check as well as check if a user is logged in
    checkStatus();
    super.onInit();
  }

  checkStatus() async {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        showOfflinePage();
      } else if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        if (box.read('userName') == null) {
          showHomePage();
        } else if (box.read('userName') != null) {
          showPostLoginPage();
        }
      }
    });
  }

  showOfflinePage() async {
    await Get.offAndToNamed('/nologinofflinescreen');
  }

  showPostLoginPage() async {
    await Get.offAndToNamed('/homepage');
  }

  showHomePage() async {
    await Get.offAndToNamed('/landingpage');
  }
}
