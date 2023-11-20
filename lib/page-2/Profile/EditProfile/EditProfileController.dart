import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/main.dart';

import '../../../Modals/constants.dart';

class ProfileImageController extends GetxController {
  final String name, address,phone;

  ProfileImageController({required this.name, required this.address, required this.phone});

  @override
  void onInit() {

    addressController.value.text= address;
   nameController.value.text= name;
    phoneController.value.text= phone;

    super.onInit();
  }
  var profileImagePath = Rx<File?>(null);
  RxBool isLoading = false.obs;


  RxMap UpdateProfileData = Map().obs;
  Rx<TextEditingController> addressController = TextEditingController().obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> phoneController = TextEditingController().obs;

   void updateAddress(text){
     text = addressController.value.text;

   }

  Future<void> pickImage(ImageSource source) async {

    final pickedFile = await ImagePicker().pickImage(source: source);



    if (pickedFile != null) {


    profileImagePath.value= File(pickedFile.path);
    }
  }
  void UpdateProfileAPI(image)async{
     try{
       var headers = {
         'Authorization': 'Bearer Bearer ${globalusertoken}'
       };
       var request = http.MultipartRequest('POST', Uri.parse(APIurl+'/api/update-profile'));
       request.fields.addAll({
         'name': nameController.value.text,
         'phone': phoneController.value.text,
         'address': addressController.value.text
       });
       request.files.add(await http.MultipartFile.fromPath('document', image));
       request.headers.addAll(headers);
       print(2);

       http.StreamedResponse response = await request.send();
       var data = await response.stream.bytesToString();
       UpdateProfileData.value = jsonDecode(data);
       print(UpdateProfileData.value);
       if (response.statusCode == 200) {
         print(UpdateProfileData.value);
         isLoading.value = false;


       }
       else {
         isLoading.value = true;
         print(response.reasonPhrase);
       }


     }catch(e){
       isLoading.value = false;
       print(e);
     }
  }
}
