import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/2_models/3.0_myvos.dart';

class MyVOsController extends GetxController {
  final myVosListObtained = false.obs;
  final myVosList = <MyVOs>[].obs;

  getMyVoDetails() async {
    final String response =
        await rootBundle.loadString('lib/0_json/3.0_vonames.js');
    print(response);
    myVosList.value = myVOsFromJson(response);
    myVosListObtained.value = true;
  }
}
