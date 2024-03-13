import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Moduls/UploadDocument/qualification-details.dart';
import 'package:myapp/Moduls/UploadDocument/uploadDocumentController.dart';
import 'package:myapp/utils.dart';

import '../../Modals/Background.dart';
import '../../Modals/Logo.dart';
import '../../Modals/UploadDocModal.dart';
import '../../Modals/heading.dart';

class UploadDocuments extends StatelessWidget {

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
              margin: EdgeInsets.only(top: 15 * fem, left: 30 * fem),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 47 * fem, 60 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            2.08 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 14.16 * fem, 0.01 * fem),
                              width: 8.76 * fem,
                              height: 16.68 * fem,
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.black,
                                weight: 0.5,
                              ),
                            ),
                            Text(
                              'Back',
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
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
            SizedBox(
              height: 30,
            ),
            Heading(
              fem: fem,
              ffem: ffem,
              text: "Upload Your Document",
            ),
            Container(
              margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 17 * fem, 0 * fem),
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
                          height: 10 * fem,
                        ),
                        Text(
                          "SIA License",
                          style: docHeadingStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UploadDocModal(fem: fem, ffem: ffem, image: controller.siaImage.value,fileName: 3),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Text(
                          "Passport Or Right To Work ",
                          style: hintStyle,
                        ),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20 * fem),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                  child: Column(
                                children: [
                                  UploadDocModal(fem: fem, ffem: ffem,image: controller.passportImage2.value,fileName: 4),
                                  SizedBox(height: 10 * fem),
                                  Text(
                                    'Front Side Image',
                                    style: docHeadingStyle,
                                  )
                                ],
                              )),
                              SizedBox(
                                width: 27 * fem,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  UploadDocModal(fem: fem, ffem: ffem,image: controller.passportImage2.value,fileName: 5),
                                  SizedBox(height: 10 * fem),
                                  Text(
                                    'Back Side Image',
                                    style: docHeadingStyle,
                                  )
                                ],
                              )),
                            ],
                          ),
                        ),

                        Text(
                          "Driving License",
                          style: hintStyle,
                        ),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20 * fem),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                  child: Column(
                                children: [
                                  UploadDocModal(fem: fem, ffem: ffem,image: controller.divingImage1.value,fileName: 6),
                                  SizedBox(height: 10 * fem),
                                  Text(
                                    'Front Side Image',
                                    style: docHeadingStyle,
                                  )
                                ],
                              )),
                              SizedBox(
                                width: 27 * fem,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  UploadDocModal(fem: fem, ffem: ffem,image: controller.divingImage2.value,fileName: 7),
                                  SizedBox(height: 10 * fem),
                                  Text(
                                    'Back Side Image',
                                    style: docHeadingStyle,
                                  )
                                ],
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.transparent,
                     shadowColor: Colors.transparent
                   ),
                     onPressed: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QualificationDetails(),));



                 }, child:  buttomModal(
                   bgColor:kbuttonBgColor,
                   fem: fem, ffem: ffem, text: 'Next', margin: 52.5,))




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


