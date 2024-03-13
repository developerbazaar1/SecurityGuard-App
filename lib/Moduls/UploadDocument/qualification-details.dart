import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Moduls/UploadDocument/uploadDocumentController.dart';

import 'package:myapp/utils.dart';

import '../../Modals/Background.dart';
import '../../Modals/Logo.dart';
import '../../Modals/UploadDocModal.dart';
import '../../Modals/buttonModal.dart';
import '../../app/theme/constant/constants.dart';
import '../../Modals/heading.dart';
import '../HomeScreen/HomeScreen.dart';

class QualificationDetails extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 0 * fem, left: 30 * fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(width: 80,)

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Heading(
                  fem: fem,
                  ffem: ffem,
                  text: "Submit Relevant\n Qualifications",
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    heightFactor: 1.7,
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Center(child: Text('Qualification'),),
                              actions: [
                                Container(
                                  margin:EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                  child: Text(
                                    'Please submit here any other security qualifications you may have e.g NASDU for Dog Handlers.Personal Protection Or any medical qualifications you may be trained in e.g first aid training.',
                                    style: TextStyle(

                                    fontFamily: 'Nunito',
                                    fontSize: 14,

                                        fontWeight:FontWeight.w400

                                    ),
                                  ),
                                ),
                                Center(child: ElevatedButton(onPressed: (){}, child: Text('OK')))
                              ],
                            ); // Call the function to build the dialog
                          },
                        );
                      },
                      icon: Image.asset(
                        'assets/page-2/images/finalImage/info.png', // Replace with the path to your SVG file
                        // Optionally set the color
                        width: 24.0, // Optionally set the width
                        height: 24.0, // Optionally set the height
                      ),
                    ))
              ],
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
                      children: [
                        buildColumn(fem, ffem),
                        buildColumn(fem, ffem),
                        buildColumn(fem, ffem),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homescreen(selectedIndexValue: 0,),
                            ));
                      },
                      child: buttomModal(
                        bgColor: kbuttonBgColor,
                        fem: fem,
                        ffem: ffem,
                        text: 'Submit',
                        margin: 41.5,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumn(double fem, double ffem) {
    UploadDocumentController controller = UploadDocumentController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Course Name & Image",
          style: docHeadingStyle,
        ),


        Container(
          height: 20*fem,
          child: TextFormField(

            decoration:InputDecoration(

              hintText:  "Enter Your Course Name",
    hintStyle:  TextStyle(
          color: Color(0xff3A3A3A),
          fontFamily: 'Nunito',
          fontSize: 12,
          fontWeight: FontWeight.w400

    )
            ) ,
          ),
        ),


        SizedBox(
          height: 10 * fem,
        ),
        UploadDocModal(fem: fem, ffem: ffem,image: controller.nameImage1.value,fileName: 8),
        SizedBox(
          height: 10 * fem,
        ),
      ],
    );
  }
}
