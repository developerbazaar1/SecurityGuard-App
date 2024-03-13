import 'dart:ui';

import 'package:flutter/material.dart';

import '../Modals/Background.dart';
import '../Modals/Logo.dart';
import '../Modals/buttonModal.dart';
import '../app/theme/constant/constants.dart';
import '../Modals/heading.dart';
import '../utils.dart';
import 'SignUp/sign-up.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0x8cffffff),
      body:
      Stack(
        children: [
          Image.asset(
            'assets/page-2/images/finalImage/bgSecurityImage.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2), // Adjust the values for desired blur intensity
            child: Container(
              color: Color(0x8cffffff)
                  .withOpacity(0.7), // Adjust the opacity as needed
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                30 * fem, 60 * fem, 0 * fem, 0 * fem),
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

          Positioned(
              bottom: 0.0, // This aligns the widget at the bottom
              left: 0.0, // You can adjust the left position if needed
              right: 0.0,

              child:Container(height: 350*fem,
                child: SizedBox.expand(

                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    decoration: BoxDecoration(
                      color: kBackgroundBottomsheet,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          'Welcome to RayNet Team.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Noto Sans',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 15 * fem,
                        ),
                        Text(
                          'Be part of a Team of Professionals Security Providers.',
                          textAlign: TextAlign.center,
                          style: docHeadingStyle,
                        ),
                        SizedBox(
                          height: 15 * fem,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'To register on RayNet Team please upload your SIA Licence and Certificates & Achievements in Security.',
                          style: docHeadingStyle,
                        ),
                        SizedBox(height: 15*fem,),
                        Text(
                          'Good Luck',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Noto Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 15*fem,),
                        Center(
                          child: Container(
                            width: 180,
// frame2Gy7 (50:156)
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 0 * fem, 10 * fem, 20 * fem),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: buttomModal(
                                bgColor: kbuttonBgColor,
                                fem: fem,
                                ffem: ffem,
                                text: 'Next',
                                margin: 52.5,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ) ),
        ],
      ),
    );
  }

}

