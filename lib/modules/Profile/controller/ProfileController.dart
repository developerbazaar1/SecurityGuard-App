import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

import '../../../Modals/constants.dart';
import '../../../core/apiDataModal/getUserData.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/data/localStorage/localStoragedata.dart';
import '../../../core/http_methods/http_methods.dart';
import '../../../main.dart';
import '../../Login/view/LoginScreen.dart';
import '../../Splash_Screen/controller/SplashScreenController.dart';

class ProfileController extends GetxController {
  RxMap LogoutData = Map().obs;

  RxBool isLoading = false.obs;

  Map<String, dynamic> bodyParamsForLogout = {};
  Map<String, dynamic> queryParametersForLogout = {};

  final getUserData = Rxn<GetUserData>();

  @override
  void onInit() async {
    await getProfileCalling();

    super.onInit();
  }

  Future<void> getProfileCalling() async {
    http.Response? response = await HttpMethod.instance.getRequest(
      url: UriConstant.getUserUrl,
    );

    if (response!.statusCode == 200 &&
        CM.responseCheckForGetMethod(response: response)) {
      print(response.body);
      getUserData.value =
          await GetUserData.fromJson(jsonDecode(response.body ?? ""));
    }
  }

  Future<bool> logoutApiCalling() async {
    bodyParamsForLogout = {};
    http.Response? response = await HttpMethod.instance.postRequest(
        url: UriConstant.logoutUrl, bodyParams: bodyParamsForLogout);
    if (CM.responseCheckForPostMethod(response: response)) {
      bodyParamsForLogout.clear();
      if (response!.statusCode == 200) {
        LogoutData.value = jsonDecode(response.body);
        Get.snackbar('Log Out Successful', LogoutData.value[ApiKey.message],
            colorText: ThemeColortDark);
        await LocalStorage.setKey('');

        isLoading.value = false;
        Get.offAll(() => LoginScreen());

        return true;
      }
      CM.showToast("Server Error");
      return false;
    } else {
      bodyParamsForLogout.clear();
      return false;
    }
  }

  void LogOutAPI() async {
    try {
      isLoading.value = true;
      var headers = {'Authorization': 'Bearer $globalusertoken'};
      var request = http.Request(
          'POST',
          Uri.parse(
              'http://pragya.dbtechserver.online/security/api/auth/logout'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      LogoutData.value = jsonDecode(data);
      print(LogoutData.value);

      if (response.statusCode == 200) {
        Get.snackbar('Log Out Successful', LogoutData.value['message'],
            colorText: ThemeColortDark);
        await LocalStorage.setKey('');

        isLoading.value = false;
        Get.offAll(() => LoginScreen());
      } else {
        isLoading.value = false;
        print(response.reasonPhrase);
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
