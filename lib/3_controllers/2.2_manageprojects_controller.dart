import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/2_models/2.0_projectlist_model.dart';

class ManageProjectsController extends GetxController {
  final projectList = <ProjectList>[].obs;
  final projectListObtained = false.obs;

  getProjectDetailsJsonData() async {
    final String response =
        await rootBundle.loadString('lib/0_json/2.0_projectList.js');
    print(response);
    projectList.value = projectListFromJson(response);
    projectListObtained.value = true;
  }
}
