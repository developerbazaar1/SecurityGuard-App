import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/page-2/Login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Modals/constants.dart';
import '../../main.dart';
class ProfileController extends GetxController {
  RxMap LogoutData = Map().obs;
  RxMap ProfileData = Map().obs;
  RxBool isLoading = false.obs;

  void LogOutAPI() async {
    try {
      isLoading.value = true;
      var headers = {
        'Authorization': 'Bearer $globalusertoken'
      };
      var request = http.Request('POST', Uri.parse('http://pragya.dbtechserver.online/security/api/auth/logout'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      LogoutData.value = jsonDecode(data);
      print(LogoutData.value);

      if (response.statusCode == 200) {




        Get.snackbar('Log Out Successful', LogoutData.value['message'],colorText: ThemeColortDark);

        tokenStorage.removeToken();
        isLoading.value = false;
        Get.offAll(()=>LoginScreen());

      }
      else {
        isLoading.value = false;
        print(response.reasonPhrase);
      }



    } catch (e) {
      isLoading.value = false;
print(e);
    }
  }

  @override
  void onInit() {
    ProfileAPI();


    super.onInit();
  }
  void ProfileAPI()async{

    try{
      var headers = {
        'Authorization': 'Bearer $globalusertoken'
      };
      var request = http.Request('GET', Uri.parse('http://pragya.dbtechserver.online/security/api/get-user'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();


      if (response.statusCode == 200) {
        ProfileData.value = jsonDecode(data);
        print(data);

      }
      else {
        print(response.reasonPhrase);
      }

    }catch(e){
      print(e);
    }

  }
  void _setKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', key);
    print('set key');
  }
}