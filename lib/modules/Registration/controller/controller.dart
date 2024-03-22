import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:myapp/Modals/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../TokenStorage.dart';
import '../../../main.dart';
import '../../../routes/app_routes.dart';
import '../../HomeScreen/view/HomeScreen.dart';
class RegistrationController extends GetxController{
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController>  phoneController = TextEditingController().obs;
  Rx<TextEditingController>passwordController = TextEditingController().obs;
  RxMap registrationData  = Map().obs;
  RxBool isLoading = false.obs;
  void _setKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', key);
    print('set key');
  }

  void RegistrationAPI(BuildContext context)async{

    try{
      isLoading.value = true;
      var request = http.MultipartRequest('POST', Uri.parse('http://pragya.dbtechserver.online/security/api/auth/register'));
      request.fields.addAll({
        'name': nameController.value.text,
        'email': emailController.value.text,
        'password': passwordController.value.text,
        'phone': phoneController.value.text
      });
      print(nameController.value.text);
      print(emailController.value.text);
      print(passwordController.value.text);
      print(phoneController.value.text);



      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      registrationData.value = jsonDecode(data);
      print(registrationData.value);

      if (response.statusCode == 200) {
        isLoading.value = false;
        print(registrationData);
        if(registrationData.value['status']==true){
          _setKey(registrationData.value['token']);
      
          Get.snackbar('Registration Successful', registrationData.value['message'],colorText: ThemeColortDark);
          Get.toNamed(AppRoutes.homeScreen,arguments: 0);
         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(selectedIndexValue: 0,),));
        }
      }
      else {
        Get.snackbar('Registration failed', registrationData.value['errors']['email'][0],colorText: ThemeColorError);
        print(registrationData.value['errors']['email']);
        isLoading.value = false;
        print(response.reasonPhrase);
      }




    }catch(e){
      isLoading.value = false;
      print(e);
    }
  }

}