import 'package:get/get.dart';

class AppSettingController extends GetxController{
  RxBool isNotificationSwitchOn = false.obs;
  RxBool isUpdateSwitchOn = false.obs;
  valueChanger (value){
    isNotificationSwitchOn.value = value;
  }
  valueUpdate (value){
    isUpdateSwitchOn.value = value;
  }
}