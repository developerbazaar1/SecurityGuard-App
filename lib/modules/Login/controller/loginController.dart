import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../TokenStorage.dart';
import '../../../main.dart';
import '../../HomeScreen/view/HomeScreen.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;
  RxMap LoginData = Map().obs;

  void _setKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', key);
    print('set key');
  }

  void loginApi(BuildContext context) async {
    isLoading.value = true;

    try {
      var request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'http://pragya.dbtechserver.online/security/api/auth/login'));
      request.fields.addAll({
        'email': emailController.value.text,
        'password': passwordController.value.text
      });

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();

      LoginData.value = jsonDecode(data);
      if (response.statusCode == 200) {
        isLoading.value = false;

        if (LoginData.value['status'] == true) {
          _setKey(LoginData.value['token']);

          Get.snackbar('Login Successful', LoginData.value['message'],
              colorText: ThemeColortDark);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(
                  selectedIndexValue: 0,
                ),
              ));
        }
      } else {
        isLoading.value = false;
        print(LoginData.value);
        print(data);
        Get.snackbar('Login failed', LoginData.value['message'],
            colorText: ThemeColorError);
      }

      // final response  = await post(Uri.parse(' http://pragya.dbtechserver.online/security/api/auth/login'),
      //     body: {
      //       'email': emailController.value.text,
      //       'password': passwordController.value.text
      //     }
      // );
      // var data = jsonDecode(response.body);
      // print(response.statusCode);
      // print(data);
    } catch (e) {
      print(e);
      Get.snackbar('Exception', e.toString());
      isLoading.value = false;
    }
  }
}
