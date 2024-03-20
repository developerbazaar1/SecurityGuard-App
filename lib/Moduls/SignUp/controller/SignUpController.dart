import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController{
  RxBool option1 = false.obs;
  RxBool option2 = false.obs;
  RxBool option3 = false.obs;
  RxBool error = false.obs;

  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> phoneController = TextEditingController().obs;

  RxBool  isPhoneEmpty=false.obs;

  void updateChectBoxValue(value,option){
    if(option==1)
      option1.value = !option1.value;
    if(option==2)
      option2.value = !option2.value;
    if(option==3)
      option3.value = !option3.value;



}
  void updateServiceError(){
    if(option3.value==false && option2.value== false&& option1.value==false){
      print('condition true');
  error.value = true;
  }else{
  error.value=false;
    }
    print(error.value);

  }
  @override
  void dispose() {
    // Dispose of the controller when no longer needed
    nameController.value.dispose();
    emailController.value.dispose();
    phoneController.value.dispose();

    super.dispose();
  }

}