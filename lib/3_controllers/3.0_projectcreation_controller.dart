import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class ProjectCreationController extends GetxController {
  final projectPage = 0.obs;
  List<PlatformFile> selectedImagePath = <PlatformFile>[].obs;
  List<String> imagePath = <String>[].obs;
  List<String> imageName = <String>[].obs;

  var selectedImageSize = ''.obs;
  final gotImage = false.obs;
  int i = 0;

  @override
  onInit() {
    super.onInit();
  }

  getImage() async {
    try {
      FilePickerResult? pickedImage = await FilePicker.platform
          .pickFiles(allowMultiple: true, type: FileType.image);
      if (pickedImage != null) {
        if (pickedImage.files.length > 5) {
          Get.snackbar('Oops', 'Only 5 images can be uploaded for a project',
              snackPosition: SnackPosition.BOTTOM);
        } else if (pickedImage.files.length <= 5) {
          selectedImagePath = pickedImage.files;
          print(selectedImagePath);
        }
      } else {
        Get.snackbar('Oops', 'No image selected',
            snackPosition: SnackPosition.BOTTOM);
      }
    } finally {
      gotImage.value = false;
    }
    update();
  }

  deleteImage(i) {
    selectedImagePath.removeAt(i);
    update();
  }
}
