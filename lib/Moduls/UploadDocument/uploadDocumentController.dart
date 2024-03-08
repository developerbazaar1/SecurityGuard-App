import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadDocumentController extends GetxController {
  RxString profileImagePath = ''.obs;
  var file;
  RxBool validator = false.obs;
  RxBool isuniformNull = false.obs;
  RxBool isvanNull = false.obs;
  RxBool issiaNull = false.obs;
  RxBool ispassportImage1Null = false.obs;
  RxBool ispassportImage2Null = false.obs;
  RxBool isdivingImage1mNull = false.obs;
  RxBool isdivingImage2Null = false.obs;
  RxBool isnameImage1Null = false.obs;

  Rx<XFile?> uniformImage = Rx<XFile?>(null);
  Rx<XFile?> vanImage = Rx<XFile?>(null);
  Rx<XFile?> siaImage = Rx<XFile?>(null);
  Rx<XFile?> passportImage1 = Rx<XFile?>(null);
  Rx<XFile?> passportImage2 = Rx<XFile?>(null);
  Rx<XFile?> divingImage1 = Rx<XFile?>(null);
  Rx<XFile?> divingImage2 = Rx<XFile?>(null);
  Rx<XFile?> nameImage1 = Rx<XFile?>(null);
  Rx<XFile?> nameImage2 = Rx<XFile?>(null);
  Rx<XFile?> nameImage3 = Rx<XFile?>(null);

  void updateImage(XFile? image, fileName) {
if(image!=null)
  print(image.path);

    if (fileName == 1) {
      uniformImage.value = image;
      isuniformNull.value = true;

    } else if (fileName == 2) {
      vanImage.value = image;
      isvanNull.value = true;
    } else if (fileName == 3) {
      siaImage.value = image;
      issiaNull.value = true;
    } else if (fileName == 4) {
      passportImage1.value = image;
      ispassportImage1Null.value = true;
    } else if (fileName == 5) {
      passportImage2.value = image;
      ispassportImage2Null.value = true;
    } else if (fileName == 6) {
      divingImage1.value = image;
      isdivingImage1mNull.value = true;
    } else if (fileName == 7) {
      divingImage2.value = image;
      isdivingImage2Null.value = true;
    } else if (fileName == 8) {
      nameImage1.value = image;
      isnameImage1Null.value = true;
    }
  }

  String? validateImage(XFile? image) {
    if (image == null) {
      return 'Please select an image';
    }
    // Add more validation logic here if needed
    return null;
  }

  var pickedFile = ImagePicker().obs;
  var pickedFile1 = ImagePicker().obs;

  RxString error = ''.obs;

  Future<void> pickImage(ImageSource source, image) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    print(pickedFile?.path);

    if (pickedFile != null) {
      profileImagePath.value = pickedFile.path;
      image = pickedFile.path;

      print('${profileImagePath.value} image');
    } else {
      error.value = 'Please Upload documents';
    }
  }
}
