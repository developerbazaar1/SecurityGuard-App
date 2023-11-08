import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PaymentController extends GetxController{

  Rx<TextEditingController> cardNumberController = TextEditingController().obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> expireyDateController = TextEditingController().obs;
  Rx<TextEditingController> cvvController = TextEditingController().obs;

  void changeCard(){
    cardNumberController.value.clear();
    nameController.value.clear();
    expireyDateController.value.clear();
    cvvController.value.clear();

  }


}