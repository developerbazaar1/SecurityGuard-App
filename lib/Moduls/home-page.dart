import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homepageLgZ (605:761)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group25H61 (605:763)
              left: 0*fem,
              top: 100*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(61*fem, 62*fem, 83*fem, 135*fem),
                width: 393*fem,
                height: 750*fem,
                decoration: BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/page-2/images/rectangle-10-bg-WcZ.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle11LKB (605:771)
                      margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 0*fem, 17*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-2/images/rectangle-11-ijK.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // rectangle12qWq (605:770)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 76*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-2/images/rectangle-12-DLu.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // rectangle14mQV (605:766)
                      margin: EdgeInsets.fromLTRB(95*fem, 0*fem, 0*fem, 130*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-2/images/securityGuards.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupx4b3JQR (Tsm8N9boec4NFjv3ozX4B3)
                      margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 0*fem, 53*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle18F4m (605:772)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 26*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/rectangle-18-ZN1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // rectangle15ABj (605:769)
                            margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/rectangle-15-UjK.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle16hSZ (605:767)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159*fem, 42*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-2/images/rectangle-16-NRo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupypudqHs (Tsm8UUkbDUpFM7kqyLyPUD)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle17ju3 (605:768)
                            margin: EdgeInsets.fromLTRB(0*fem, 29*fem, 189*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/rectangle-17-4C9.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // rectangle13Eau (605:765)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/rectangle-13-GMP.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame33BFF (605:773)
              left: 0*fem,
              top: 604*fem,
              child: Container(
                width: 393*fem,
                height: 248*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // component9tQZ (638:243)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 149*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffdff4ff),
                          borderRadius: BorderRadius.only (
                            topLeft: Radius.circular(30*fem),
                            topRight: Radius.circular(30*fem),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 0*fem),
                              blurRadius: 12.5*fem,
                            ),
                          ],
                        ),
                        child: Container(
                          // component7PcD (638:244)
                          padding: EdgeInsets.fromLTRB(15.5*fem, 10*fem, 15.5*fem, 10*fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffdff4ff),
                            borderRadius: BorderRadius.only (
                              topLeft: Radius.circular(30*fem),
                              topRight: Radius.circular(30*fem),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 0*fem),
                                blurRadius: 12.5*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame32eHF (638:245)
                                margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 59*fem, 15*fem),
                                width: double.infinity,
                                height: 64*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xffa7ffb0),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'You’re Online',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // youwillreceiveanotificationwhe (638:247)
                                constraints: BoxConstraints (
                                  maxWidth: 362*fem,
                                ),
                                child: Text(
                                  'You will receive a notification when someone hires your security services.',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // navbarLpH (605:778)
                      padding: EdgeInsets.fromLTRB(42.5*fem, 15*fem, 27*fem, 24*fem),
                      width: double.infinity,
                      height: 99*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(4*fem, 0*fem),
                            blurRadius: 2.5*fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // frame17rGq (605:779)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame23aCq (605:780)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.17*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // mingcutehome2line7yT (605:781)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/mingcute-home-2-line-4cy.png',
                                      width: 30*fem,
                                      height: 30*fem,
                                    ),
                                  ),
                                  Text(
                                    // home3cD (605:785)
                                    'Home',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame27zXT (605:786)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.67*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 16.5*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame24fNh (605:787)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                        width: 30*fem,
                                        height: 30*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/frame-24-oMB.png',
                                          width: 30*fem,
                                          height: 30*fem,
                                        ),
                                      ),
                                      Text(
                                        // chatsC7j (605:792)
                                        'Chats',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0x8c005271),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame25Ljj (605:793)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.67*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 8.5*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mingcutepaperlineBkM (605:794)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                        width: 30*fem,
                                        height: 30*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/mingcute-paper-line-dpu.png',
                                          width: 30*fem,
                                          height: 30*fem,
                                        ),
                                      ),
                                      Text(
                                        // bookingVW9 (605:798)
                                        'Booking',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0x8c005271),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              // frame281zH (605:799)
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(14*fem, 0*fem, 14*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame22YzD (605:800)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/frame-22-Cp9.png',
                                        width: 30*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                    Text(
                                      // profiletHP (605:805)
                                      'Profile',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0x8c005271),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group77cDP (605:806)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 100*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group16MAy (605:807)
                      padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                      width: double.infinity,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // group15fSZ (605:809)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // timeQQ9 (605:810)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                              width: 39.77*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-2/images/time-5MK.png',
                                width: 39.77*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // topright7pM (605:811)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // cellularconnectionrX3 (605:821)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                                    width: 22*fem,
                                    height: 13*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/cellular-connection-T2Z.png',
                                      width: 22*fem,
                                      height: 13*fem,
                                    ),
                                  ),
                                  Container(
                                    // wifiNkH (605:816)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                    width: 21.21*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/wifi-QN5.png',
                                      width: 21.21*fem,
                                      height: 15*fem,
                                    ),
                                  ),
                                  Container(
                                    // batteryUoK (605:812)
                                    width: 30*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/battery-E9w.png',
                                      width: 30*fem,
                                      height: 15*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // frame16RCm (605:826)
                      padding: EdgeInsets.fromLTRB(30*fem, 5*fem, 30*fem, 5*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff3a3a3a)),
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // raynetfinallogo1wgu (605:827)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                            width: 52.35*fem,
                            height: 40*fem,
                            child: Image.asset(
                              'assets/page-2/images/raynet-final-logo-1-HaR.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // mingcutenotificationlineT9T (605:828)
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/mingcute-notification-line-8oB.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}