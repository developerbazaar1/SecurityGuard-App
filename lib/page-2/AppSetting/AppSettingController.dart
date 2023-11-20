import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/main.dart';

class AppSettingController extends GetxController{
  RxBool isNotificationSwitchOn = false.obs;
  RxBool isUpdateSwitchOn = false.obs;
  RxMap AppUpdateData = Map().obs;
  RxMap NotificationData = Map().obs;
  valueChanger (value){

    if(value==true){
      NotificationAPI(1);
    }else{
      NotificationAPI(0);
    }

  }
  valueUpdate (value){

    value?UpdateApplicationAPI(1):UpdateApplicationAPI(0);

  }
  void NotificationAPI(value)async{
    try{
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer Bearer $globalusertoken'
      };
      var request = http.Request('GET', Uri.parse('$APIurl/api/notification-on-off?notification=$value'));


      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      NotificationData.value = jsonDecode(data);

      if (response.statusCode == 200) {


        if(NotificationData.value['data']=='1'){

          isNotificationSwitchOn.value = true;


        }else{
          isNotificationSwitchOn.value = false;
        }

      }
      else {
        print(response.reasonPhrase);
      }

    }catch(e){
      print(e);
    }

  }
  void UpdateApplicationAPI(value)async{
    try{
      var headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer Bearer $globalusertoken'
      };
      var request = http.Request('GET', Uri.parse('$APIurl/api/app-update?app_update=$value'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      AppUpdateData.value = jsonDecode(data);

      if (response.statusCode == 200) {
        print(AppUpdateData.value);

        if(AppUpdateData.value['data']=='1'){

          isUpdateSwitchOn.value = true;


        }else{
          isUpdateSwitchOn.value = false;
        }
      }
      else {
        print(response.reasonPhrase);
      }

    }catch(e){

    }

  }



}