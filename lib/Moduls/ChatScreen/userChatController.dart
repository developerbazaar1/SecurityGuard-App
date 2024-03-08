import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class UserChatController extends GetxController{
 Rx<TextEditingController> controller = TextEditingController().obs;
 RxBool emojishowing = false.obs;

 Future onBackSpacePressed()async{
  controller.value
   ..text = controller.value.text.characters.toString()
   ..selection = TextSelection.fromPosition(
       TextPosition(offset: controller.value.text.length));
  if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.idle) {
   // wait for the end of that frame.
   await SchedulerBinding.instance.endOfFrame;

  }

 }
 emojiState(){
  emojishowing.value = !emojishowing.value;
 }
}