import 'package:get/get.dart';

class ProjectTargetController extends GetxController {
  final targetName = ''.obs;
  final targetNameHint = ''.obs;
  final targetNameList = [].obs;

  final targetDescription = ''.obs;
  final targetDescriptionHint = ''.obs;
  final targetDescriptionList = [].obs;

  final targetType = ''.obs;
  final targetTypeHint = ''.obs;
  final targetTypeList = [].obs;

  final targetAmount = 0.0.obs;
  final targetAmountHint = ''.obs;
  final targetAmountList = [].obs;

  final targetQuantity = 0.obs;
  final targetQuantityHint = ''.obs;
  final targetQuantityList = [].obs;

  final definePageActive = false.obs;

  deleteDataFromList(int i) {
    targetNameList.removeAt(i);
    targetDescriptionList.removeAt(i);
    targetTypeList.removeAt(i);
    targetAmountList.removeAt(i);
    targetQuantityList.removeAt(i);
  }
}
