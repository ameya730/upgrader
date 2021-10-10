import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/2_models/1.0_vobasicdetails_model.dart';

class VODetailsController extends GetxController {
  final listObtained = false.obs;
  final voDetailsList = <VoBasicDetails>[].obs;
  final voId = 0.obs;
  final seeVODetail = false.obs;
  final quickSearchActive = false.obs;
  final searchEnabled = false.obs;
  final filteredSearchList = <VoBasicDetails>[].obs;
  final filteredValue = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  filterList() {
    if (filteredValue.value.isEmpty == false) {
      filteredSearchList.clear();
      voDetailsList.forEach(
        (element) {
          if (element.vOName!
              .toLowerCase()
              .contains(filteredValue.value.toLowerCase())) {
            filteredSearchList.add(element);
          }
        },
      );
      voDetailsList.forEach(
        (element) {
          if (element.certificateType!.toLowerCase().contains(
                filteredValue.value.toLowerCase(),
              )) {
            filteredSearchList.add(element);
          }
        },
      );
      update();
    } else if (filteredValue.value.isEmpty == true) {
      filteredSearchList.addAll(voDetailsList);
    }
    print(filteredSearchList);
  }

  getVoDetailsJsonData() async {
    final String response =
        await rootBundle.loadString('lib/0_json/1.0_vobasicdetails.js');
    var data = json.decode(response) as List<dynamic>;
    voDetailsList.value = data.map((e) => VoBasicDetails.fromJson(e)).toList();
    filteredSearchList.value =
        data.map((e) => VoBasicDetails.fromJson(e)).toList();
    listObtained.value = true;
    return response;
  }
}
