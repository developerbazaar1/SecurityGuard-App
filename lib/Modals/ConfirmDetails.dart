import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/NextPageButtonModal.dart';
import 'package:myapp/Modals/chatModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/modules/HomeScreen/controller/HomeScreenController.dart';

import '../core/utils/utils.dart';
import '../modules/HomeScreen/view/HomeScreen.dart';
import '../modules/GuardDescription/view/guardDescription.dart';
import '../modules/notification/view/notification-list.dart';
import '../routes/app_routes.dart';


class ConfirmDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Container(
          // frame63YwB (605:1126)

          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(bottom: 10),
                    // frame52Htm (605:1127)

                    width: double.infinity,
                    height: 43 * fem,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Confirm Your Details',
                          style: SafeGoogleFont(
                            'Noto Sans',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    height: 360 * fem,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: ThemeColorBackgroundBottomsheet,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Booking Service:',
                          style: confirmHeading,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Security Guard',
                          style: confirmtext,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Address:',
                          style: confirmHeading,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Fife Heights',
                          style: confirmtext,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Booking Date:',
                          style: confirmHeading,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        RichText(text: TextSpan(
                          text: "12/06/2023",style: confirmHeading,
                          children: [
                            TextSpan(text: ' To ' ,style: confirmtext),TextSpan(text: '15/06/2023',style: confirmHeading)
                          ]
                        ),),

                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Booking Hours:',
                          style: confirmHeading,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '5 Hours',
                          style: confirmtext,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          // autogroupkcxhkzM (TskafPky4JWL1fuVp8kCxh)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // priceWCq (293:1879)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: double.infinity,
                                child: Text(
                                  'Price:',
                                  textAlign: TextAlign.left,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              RichText(
                                // hourEed (293:1880)
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3639999628*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '£12.99 ',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '/ Hour',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame73k97 (293:1881)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // hours3tu (293:1882)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  '£12.99 × 5 Hours',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // Yqf (293:1883)
                                '£64.95',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            width: MediaQuery.of(context).size.width,
                            child: CustomPaint(
                              painter: DashedBorderPainter(),
                            ),
                          ),
                        ),
                        Container(
                          // frame74HYM (293:1884)
                          padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (

                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // totalReZ (293:1885)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Total:',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ),
                              Text(
                                // Mo7 (293:1886)
                                '£64.95',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff005271),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            width: MediaQuery.of(context).size.width,
                            child: CustomPaint(
                              painter: DashedBorderPainter(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                // frame50SUZ (367:77)
                padding: EdgeInsets.fromLTRB(
                    10.5 * fem, 15 * fem, 10.5 * fem, 8 * fem),
                width: double.infinity,
                height: 73 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 0 * fem),
                      blurRadius: 7.5 * fem,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    NextPageButton(fem: fem, ffem: ffem,buttonText: 'Cancel',
                      onTap: (){    Get.toNamed(AppRoutes.homeScreen);
                      currentIndex.value = 0;
                      },
                      BGColor: ThemeColorChatColor,),
                    NextPageButton(fem: fem, ffem: ffem,buttonText: 'Confirm',onTap:   (){
                      Get.toNamed(AppRoutes.guard);},BGColor: ThemeColortDark,),
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
            color: ThemeColorAppbarUnderline, // Choose your border color
            width: 1.0, // Choose the border width
          ),
        ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leadingWidth: 130,
      leading: Container(
        margin: EdgeInsets.only(left: 0, top: 5, bottom: 5),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 40,
          width: 52.35,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationList()));
          },
          icon: Image(
            image: AssetImage('assets/images/notification.png'),
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
