import 'package:get/get.dart';

class SettingsController extends GetxController {
  final voNotification = true.obs;
  final voNotificationText = 'VO notification are sent currently'.obs;

  final projectNotification = true.obs;
  final projectNotificationText =
      'Project notifications are sent currently'.obs;

  final favVoNotification = true.obs;
  final favVoNotificationText =
      'Favorite VO notification are sent currently'.obs;

  final favProjectNotification = true.obs;
  final favProjectNotificationText =
      'Favorite project notification are sent currently'.obs;

  void voNotificationToggle() {
    voNotification.value = voNotification.value ? true : false;
    if (voNotification.value == true) {
      voNotificationText.value = 'VO notification are sent currently';
    } else if (voNotification.value == false) {
      voNotificationText.value = 'No VO notifications being sent';
    }
  }

  void projectNotificationToggle() {
    projectNotification.value = projectNotification.value ? true : false;
    if (projectNotification.value == true) {
      projectNotificationText.value =
          'Project notifications are sent currently';
    } else if (projectNotification.value == false) {
      projectNotificationText.value = 'No project notifications being sent';
    }
  }

  void favVoNotificationToggle() {
    favVoNotification.value = favVoNotification.value ? true : false;
    if (favVoNotification.value == true) {
      favVoNotificationText.value =
          'Favorite VO notification are sent currently';
    } else if (favVoNotification.value == false) {
      favVoNotificationText.value = 'No favorite VO notifications being sent';
    }
  }

  void favProjectNotificationToggle() {
    favProjectNotification.value = favProjectNotification.value ? true : false;
    if (favProjectNotification.value == true) {
      favProjectNotificationText.value =
          'Favorite project notification are sent currently';
    } else if (favProjectNotification.value == false) {
      favProjectNotificationText.value =
          'No favorite project notifications being sent';
    }
  }
}
