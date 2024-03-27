import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/modules/Splash_Screen/controller/SplashScreenController.dart';
import 'package:myapp/routes/app_routes.dart';

import '../../../core/apiDataModal/getUserData.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/http_methods/http_methods.dart';

class ProfileImageController extends GetxController {
  RxString profileImagePath = ''.obs;
  TextEditingController addressController = TextEditingController();
 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
 TextEditingController phoneController = TextEditingController();
  Map<String, dynamic> bodyParamsForEditProfile = {};
  Map<String, dynamic> updateProfileData = {};


  RxBool isLoading = false.obs;
  var arguments = Get.arguments;
  File? pickedFile;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    nameController.text = arguments['name'];
    emailController.text = arguments['email'];
    phoneController.text = arguments['phone'];
    addressController.text = arguments['address'];

  }


  void updateAddress(text) {
    text = addressController.value.text;
  }



  Future<void> pickImage(ImageSource source) async {
    final _imageFile = await ImagePicker().pickImage(source: source) ;

    if (_imageFile != null) {
      pickedFile = File(_imageFile.path);
      profileImagePath.value = _imageFile.path;
      print("this is profile ${profileImagePath.value}");
    }
  }

  Future<bool> updateProfileApiCalling() async {
    isLoading.value = true;
    print(1);

    bodyParamsForEditProfile = {
      ApiKey.name: nameController.text,
      ApiKey.phone:phoneController.text,
      ApiKey.address:addressController.text,
      if(arguments['address']!=null)
      ApiKey.document_old:arguments['image'],


    };
    isLoading.value = true;
    print(2);
    http.Response? response = await HttpMethod.instance.updateMultipartRequest(
        url: UriConstant.updateProfileUrl,
        bodyParams: bodyParamsForEditProfile,
        multipartRequestType: 'POST',

        image: pickedFile,
        token: '${ApiKey.bearer} $globalusertoken',
        imageKey: ApiKey.document);
    print(3);
    isLoading.value = true;
    print(response!.body);
    if (CM.responseCheckForPostMethod(response: response)) {
      bodyParamsForEditProfile.clear();
      updateProfileData = jsonDecode(response.body);
      CM.showToast(updateProfileData['message']);
      Get.offAllNamed(AppRoutes.updateProfile);
      isLoading.value = false;
      print(4);
      return true;
    } else {
      isLoading.value = false;
      bodyParamsForEditProfile.clear();
      print(5);
      return false;
    }
  }




}
