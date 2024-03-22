import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/apiDataModal/getUserData.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/http_methods/http_methods.dart';

class ProfileImageController extends GetxController {
  RxString profileImagePath = ''.obs;
  Rx<TextEditingController> addressController = TextEditingController().obs;

  void updateAddress(text) {
    text = addressController.value.text;
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      profileImagePath.value = pickedFile.path;
    }
  }

}
