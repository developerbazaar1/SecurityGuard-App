import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageController extends GetxController {
  RxString profileImagePath = ''.obs;
  Rx<TextEditingController> addressController = TextEditingController().obs;
  Rx<TextEditingController> descriptionController = TextEditingController().obs;
  Rx<TextEditingController> accountNumber = TextEditingController().obs;
  Rx<TextEditingController> accountName = TextEditingController().obs;
  Rx<TextEditingController> accountIFSC = TextEditingController().obs;
  final picker = ImagePicker();
  RxList selectedImages = [].obs;



   void updateAddress(text){
     text = addressController.value.text;

   }void updateDescrition(text){
     text = descriptionController.value.text;

   }





  Future<void> pickImage(ImageSource source) async {

    final pickedFile = await ImagePicker().pickImage(source: source);



    if (pickedFile != null) {
      profileImagePath.value = pickedFile.path;
    }
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;


        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
            print(selectedImages.value);
          }
        } else {
          print('xfilePick is empty');

          // ScaffoldMessenger.of(context).showSnackBar(
          //     const SnackBar(content: Text('Nothing is selected')));
        }

  }
  void deleteImage(image){
     selectedImages.remove(image);
  }
}

