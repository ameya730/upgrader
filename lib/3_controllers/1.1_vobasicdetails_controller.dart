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

  //Observables for detailed search
  final voNameSearch = ''.obs;
  final certificateSearch = ''.obs;
  final registrationNumSearch = ''.obs;
  final projectNameSearch = ''.obs;
  final detailedFilterEnabled = false.obs;
  final clearingFilter = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  resetSearch() {
    filteredSearchList.clear();
    filteredSearchList.addAll(voDetailsList);
  }

  detailedFilterList() {
    print(voNameSearch.value);
    if (voNameSearch.value.isEmpty == false ||
        certificateSearch.value.isEmpty == false ||
        registrationNumSearch.value.isEmpty == false) {
      print('test');
      filteredSearchList.clear();
      voDetailsList.forEach(
        (element) {
          if (voNameSearch.value.isEmpty == false) {
            if (element.vOName!.toLowerCase().contains(
                  voNameSearch.value.toLowerCase(),
                )) {
              filteredSearchList.add(element);
            }
          }
          if (certificateSearch.value.isEmpty == false) {
            if (element.vOName!.toLowerCase().contains(
                  certificateSearch.value.toLowerCase(),
                )) {
              filteredSearchList.add(element);
            }
          }
          if (registrationNumSearch.value.isEmpty == false) {
            if (element.vOName!.toLowerCase().contains(
                  registrationNumSearch.value.toLowerCase(),
                )) {
              filteredSearchList.add(element);
            }
          }
        },
      );
      print('The length is $filteredSearchList.length');
      if (filteredSearchList.length == 0) {
        filteredSearchList.addAll(voDetailsList);
        detailedFilterEnabled.value = false;
      }
      update();
    }
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
    } else if (filteredValue.value.isEmpty == true) {
      filteredSearchList.addAll(voDetailsList);
    }
    update();
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
