import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_getxnetworkmanager.dart';

class NetWorkBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetXNetworkManager>(() => GetXNetworkManager());
  }
}
