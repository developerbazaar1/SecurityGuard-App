import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Modals/heading.dart';

import 'package:myapp/utils.dart';

import 'LoginScreen/view/login.dart';

class CheckEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BackLogin(),
            SizedBox(height:130 ,),
            Container(
              // frame14KFf (91:196)
              margin: EdgeInsets.fromLTRB(39 * fem, 0 * fem, 38 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Heading(fem: fem, ffem: ffem, text: "CHECK EMAIL"),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                    // passwordresetrequestreceivedem (91:239)
                    constraints: BoxConstraints(
                      maxWidth: 316 * fem,
                    ),
                    child: Text(
                      'Password reset request received. Email sent to your account address.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Nunito',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                    // frame2a57 (91:221)
                    margin:
                    EdgeInsets.fromLTRB(43 * fem, 0 * fem, 43 * fem, 0 * fem),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        padding: EdgeInsets.zero,
                      ),
                      child: buttomModal(
                        bgColor: kbuttonBgColor,


                        fem: fem,ffem: ffem,text: 'BACK TO LOGIN',margin: 37.5,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}


