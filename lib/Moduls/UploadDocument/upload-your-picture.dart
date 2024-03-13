
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Moduls/UploadDocument/uploadDocumentController.dart';
import 'package:myapp/utils.dart';

import '../../Modals/Logo.dart';
import '../../Modals/UploadDocModal.dart';
import '../../Modals/buttonModal.dart';
import '../../Modals/heading.dart';
import 'upload-documents.dart';

class UploadPicture extends StatelessWidget {
  UploadDocumentController controller = UploadDocumentController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15*fem,left: 30*fem),
              child: Row(

                children: [


                  Container(

                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 60*fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2.08*fem, 0*fem, 0*fem, 0*fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(

                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.16*fem, 0.01*fem),
                              width: 8.76*fem,
                              height: 16.68*fem,
                              child: Icon(Icons.arrow_back_ios,size: 20 , color: Colors.black,weight: 0.5,),
                            ),
                            Text(

                              'Back',
                              style: SafeGoogleFont (
                                'Nunito',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Logo(fem: fem),
                ],
              ),
            ),
            Text(controller.error.value,style: TextStyle(color: kError),),
            SizedBox(
              height: 30,
            ),
            Heading(
              fem: fem,
              ffem: ffem,
              text: "Upload Picture in Uniform",
            ),

            Container(

              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 17*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
// frame29079mT (605:2270)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                            child: UploadDocModal(fem: fem, ffem: ffem,image: controller.uniformImage.value,fileName: 1,)),
                        SizedBox(
                          height: 10*fem,
                        ),
                        Text(

                          'PNG or JPG no bigger than 800px wide and tall.',
                          style: SafeGoogleFont (
                            'Noto Sans',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625*ffem/fem,
                            color: Color(0xff3a3a3a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19*fem,
                  ),
                  Container(
// frame2908cBB (605:2271)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Heading(fem: fem, ffem: ffem, text: "Upload Picture with \n Dog  and your Vehicle"),
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: UploadDocModal(fem: fem, ffem: ffem,image:  controller.vanImage.value,fileName: 2,)),
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(

                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93*fem, 0*fem),
                          child: Text(
                            'PNG or JPG no bigger than 800px wide and tall.',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff3a3a3a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      onPressed: (){
                        print(controller.uniformImage.value);
                        print("${controller.isuniformNull.value.obs} and ${controller.isvanNull.value}");

                        // final selectedImage = controller.selectedImage.value;
                        // final validationError = controller.validateImage(selectedImage);
                        //
                        // if(validationError != null){
                        //   controller.validator.value = true;
                        // }




                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return UploadDocuments();
                        },));

                      }, child:  buttomModal(bgColor: kbuttonBgColor,
                    fem: fem, ffem: ffem, text: 'Next', margin: 52.5,)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<XFile?> _getImageFromUser() async {
    return await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}

