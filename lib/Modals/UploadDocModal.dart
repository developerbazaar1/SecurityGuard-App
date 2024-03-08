import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/Modals/constants.dart';

import '../Moduls/UploadDocument/uploadDocumentController.dart';
import '../utils.dart';

class UploadDocModal extends StatelessWidget {
   UploadDocModal({
    super.key,
    required this.fem,
    required this.ffem, required this.image, required this.fileName,

  });

  final double fem;
  final double ffem;
  final int fileName;
   XFile? image;

  @override
  Widget build(BuildContext context) {

    UploadDocumentController controller = UploadDocumentController();
    final validationError = controller.validateImage(image);
    return GestureDetector(
      onTap: ()async {

        final selectedImage = await _getImageFromUser(context);
        controller.updateImage(selectedImage, fileName);
        if(selectedImage!=null){
          print(selectedImage.path);
        }





      },
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            strokeWidth: 1,
            dashPattern: [10, 7],
            color: kUploadBorderColor,
            radius: Radius.circular(5 * fem),
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Center(
                child: Container(
                  height: 100 * fem,
                  child: Obx(() => Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: controller.profileImagePath.value.isNotEmpty
                          ? Obx(() => Text(
                        controller.profileImagePath.value.toString(),
                        textAlign: TextAlign.center,
                      ))
                          : Center(
                        child: Container(
                          height: 100 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Image.asset(
                                  'assets/page-2/images/finalImage/upload.png',
                                  width: 25.32 * fem,
                                  height: 23.13 * fem,
                                ),
                              ),
                              Text(
// dragoruploadyourthumbnailimage (605:517)
                                'Drag Or Upload Your Thumbnail Image Here',

                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Nunito',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff3a3a3a),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          if (image != null)
            Image.file(File(image!.path),height: 40,width: 40,),
          Obx(() {
            return  controller.validator.value==true?
            Text(
              validationError != null?validationError:'',
              style: TextStyle(color: Colors.red),
            ) :SizedBox();
          }),
        ],
      ),
    );
  }
  Future<XFile?> _getImageFromUser(BuildContext context) async {
    UploadDocumentController controller = UploadDocumentController();
    return    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons
                        .photo_library),
                    title: Text('Gallery'),
                    onTap: ()async {
                      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
                      controller.updateImage(image, fileName);

                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                        Icons.camera_alt),
                    title: Text('Camera'),
                    onTap: () async{
                      await ImagePicker().pickImage(source: ImageSource.camera);
                      controller.updateImage(image, fileName);

                      Get.back();
                    },
                  ),
                ],
              ),
            ),
          );
        });

      await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}
// DottedBorder(
// dashPattern: [10, 5],
// strokeWidth: 1,
//
//
// radius: Radius.circular(5*fem),
// child: ClipRRect(
// //  borderRadius: BorderRadius.all(Radius.circular(12)),
//
// child: Container(
//
//
// padding: EdgeInsets.fromLTRB(59.5*fem, 50.06*fem, 59.5*fem, 46*fem),
// width: double.infinity,
// decoration: BoxDecoration (
// color: Colors.red,
//
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// // bytesizeuploadtcZ (605:515)
// margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
// width: 25.32*fem,
// height: 23.13*fem,
// child: Image.asset(
// 'assets/page-2/images/finalImage/upload.png',
// width: 25.32*fem,
// height: 23.13*fem,
// ),
// ),
// Text(
// // dragoruploadyourthumbnailimage (605:517)
// 'Drag Or Upload Your Thumbnail Image Here',
// style: SafeGoogleFont (
// 'Nunito',
// fontSize: 12*ffem,
// fontWeight: FontWeight.w400,
// height: 1.5*ffem/fem,
// color: Color(0xff3a3a3a),
// ),
// ),
// ],
// ),
// ),
// ),
// )
