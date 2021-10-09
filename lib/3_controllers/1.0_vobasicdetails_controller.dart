import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/2_models/1.0_vobasicdetails_model.dart';

class VODetailsController extends GetxController {
  final listObtained = false.obs;
  final voDetailsList = <VoBasicDetails>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  getVoDetailsJsonData() async {
    final String response =
        await rootBundle.loadString('lib/0_json/1.0_vobasicdetails.js');
    var data = json.decode(response) as List<dynamic>;
    voDetailsList.value = data.map((e) => VoBasicDetails.fromJson(e)).toList();
    listObtained.value = true;
    return response;
  }
}
