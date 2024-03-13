import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/app/theme/constant/constants.dart';


import 'package:myapp/utils.dart';

import 'HomeScreen/HomeScreen.dart';
import 'notification-list.dart';

class HelpSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(
        // helpsupportDER (321:2639)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.43*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame63Pry (471:207)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame52LnD (471:209)
                      margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 2*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (
                      ),
                      child: Center(
                        child: Text(
                          // helpsupport7gV (471:213)
                          'Help & Support',
                          style: SafeGoogleFont (
                            'Noto Sans',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: CustomPaint(
                          painter: DashedBorderPainter(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      // frame36FGu (471:214)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // dazzlecustomercare1c7T (471:215)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.5*fem),
                            width: 393*fem,
                            height: 229.57*fem,
                            child: Image.asset(
                              'assets/page-2/images/finalImage/helpChange.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // howcanwehelpyouw9j (471:216)
                            margin: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'How can we help you?',
                              style: SafeGoogleFont (
                                'Noto Sans',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupapkorXb (TskX8VeNyT52S4WtocaPKo)
                            padding: EdgeInsets.fromLTRB(15*fem, 9.5*fem, 15*fem, 0*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame141YQR (471:217)
                                  margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 0.5*fem, 10*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group138q8d (471:218)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                        width: 30*fem,
                                        height: 30*fem,
                                        decoration: BoxDecoration(
                                          color: kBackgroundSelectSecurity,
                                          shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.phone,size: 20,),
                                      ),
                                      Text(
                                        // kFb (471:222)
                                        '90009-90009',
                                        style: SafeGoogleFont (
                                          'Open Sans',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame142t6u (471:223)
                                  margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 0.5*fem, 9.5*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group138q8d (471:218)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                        width: 30*fem,
                                        height: 30*fem,
                                        decoration: BoxDecoration(
                                            color: kBackgroundSelectSecurity,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.email,size: 20,),
                                      ),
                                      Text(
                                        // xyzgmailcomLDo (471:228)
                                        'xyz@gmail.com',
                                        style: SafeGoogleFont (
                                          'Open Sans',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // group142f1B (471:229)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // writeusPSy (471:233)
                                        margin: EdgeInsets.fromLTRB(19.22*fem, 0*fem, 0*fem, 5.5*fem),
                                        child: Text(
                                          'Write Us',
                                          style: SafeGoogleFont (
                                            'Noto Sans',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // group504JD (471:230)
                                        padding: EdgeInsets.fromLTRB(19.22*fem, 9.5*fem, 19.22*fem, 9.5*fem),
                                        width: double.infinity,

                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xffffffff)),
                                          color: Color(0xffdff4ff),
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: TextFormField(
                                          maxLines: 5,
                                          style:  SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5625*ffem/fem,

                                          ),
                                          decoration: InputDecoration(

                                            border: InputBorder.none,
                                            hintText:     'Write your message here........',
                                            hintStyle: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3625*ffem/fem,
                                              color: Color(0xff6f6f6f),
                                            ),
                                          ),
                                        )

                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  // frame32h6H (471:234)
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(selectedIndexValue: 0),));
                                  },
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 53*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xff000000),
                                      borderRadius: BorderRadius.circular(10*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Submit',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 24*ffem,
                                          fontWeight: FontWeight.w600,

                                          height: 1.3625*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }

  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kAppbarUnderline, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),
                ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leadingWidth: 130,
      leading: Container(
        margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: Row(

          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios),color: Colors.black,),

            Image(
              image: AssetImage('assets/page-2/images/finalImage/logo.png'),
              height: 40,
              width: 52.35,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationList()));
          },
          icon: Image(
            image: AssetImage('assets/page-2/images/finalImage/notification.png'),
            height: 30,
            width: 30,
          ),
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }

}