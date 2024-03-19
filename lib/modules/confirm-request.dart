import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/utils.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // confirmrequestGQH (605:832)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group25ypV (605:834)
              left: 0*fem,
              top: 100*fem,
              child: Container(
                width: 393*fem,
                height: 750*fem,
                decoration: BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/modules/images/rectangle-10-bg-sPP.png',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle13rtH (605:836)
                      left: 280*fem,
                      top: 556*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-13-wTP.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle14kim (605:837)
                      left: 218*fem,
                      top: 215*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-14-Q1P.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle16tKB (605:838)
                      left: 91*fem,
                      top: 484*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-16-6rM.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle1718u (605:839)
                      left: 61*fem,
                      top: 585*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-17-fDs.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle15KQV (605:840)
                      left: 280*fem,
                      top: 401*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-15-Dn9.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle12exZ (605:841)
                      left: 76*fem,
                      top: 109*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-12-sCV.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle11Ag1 (605:842)
                      left: 265*fem,
                      top: 62*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-11-mey.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle18sKX (605:843)
                      left: 121*fem,
                      top: 375*fem,
                      child: Align(
                        child: SizedBox(
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-18-nAD.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // component10D8V (605:872)
                      left: 15*fem,
                      top: 51.5*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
                        width: 364*fem,
                        height: 548*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffdff4ff),
                          borderRadius: BorderRadius.circular(30*fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 0*fem),
                              blurRadius: 12.5*fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame32cwK (605:873)
                              margin: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 17*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle18jm3 (605:874)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/modules/images/rectangle-18-6FT.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    // securityguard54D (605:875)
                                    'SECURITY GUARD ',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 24*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame65NJD (605:877)
                              margin: EdgeInsets.fromLTRB(75.5*fem, 0*fem, 75.5*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse1tnM (605:878)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 50*fem,
                                    height: 50*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(25*fem),
                                      image: DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/modules/images/ellipse-1-bg-Rfw.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // allysonrollins9iH (605:881)
                                    'Allyson Rollins',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame43gTK (605:882)
                              width: 119*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // datetimeSBb (605:883)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Date & Time:',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // mondayoct24LXs (605:884)
                                    'Monday, Oct 24 ',
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
                              height: 10*fem,
                            ),
                            Container(
                              // frame75sXo (638:235)
                              width: 103*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // workinghoursyaq (638:236)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Working Hours:',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // hoursUnV (638:237)
                                    '5 Hours ',
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
                              height: 10*fem,
                            ),
                            Container(
                              // frame44cdo (605:885)
                              width: 62*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // addressaKj (605:886)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Address',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Fwf (605:887)
                                    '452010 ',
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
                              height: 10*fem,
                            ),
                            Container(
                              // frame45P2H (605:888)
                              width: 103*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // phonenoWch (605:889)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Phone No.',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // eD7 (605:890)
                                    '90009-90009',
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
                              height: 10*fem,
                            ),
                            Container(
                              // frame46Biq (605:891)
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupx4pkXnh (Tsm9yrQftrBLkCMbP7x4PK)
                                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // price5JR (605:892)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                          width: double.infinity,
                                          child: Text(
                                            'Price:',
                                            textAlign: TextAlign.center,
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
                                          // hour1Sy (605:893)
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
                                    // frame73B8V (605:894)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // hoursv65 (605:895)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 0*fem),
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
                                          // SaD (605:896)
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame74xoT (605:897)
                              padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // totalV2h (605:898)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 183*fem, 0*fem),
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
                                    // 5Wh (605:899)
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
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame2RKf (605:900)
                              margin: EdgeInsets.fromLTRB(47*fem, 0*fem, 47*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 43*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff016699),
                                    borderRadius: BorderRadius.circular(30*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Confirm Request',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
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
              // navbargWV (605:844)
              left: 0*fem,
              top: 753*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(27*fem, 15*fem, 27*fem, 24*fem),
                width: 393*fem,
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
                  // frame17xD7 (605:845)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame2352q (605:846)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.67*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 15.5*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcutehome2lineb1B (605:847)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/modules/images/mingcute-home-2-line-nqX.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Text(
                                  // homeUqf (605:851)
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
                        ),
                      ),
                      Container(
                        // frame27S1o (605:852)
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
                                  // frame246s3 (605:853)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/modules/images/frame-24-wNH.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Text(
                                  // chatsp2M (605:858)
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
                        // frame29ZEq (605:859)
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
                                  // mingcutepaperline3Qu (605:860)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/modules/images/mingcute-paper-line-eLh.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Text(
                                  // bookingMAh (605:864)
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
                        // frame28tgR (605:865)
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
                                // frame2221w (605:866)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/modules/images/frame-22-vD7.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // profilexAV (605:871)
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
            ),
            Positioned(
              // group77hds (605:902)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 100*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group16R45 (605:903)
                      padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                      width: double.infinity,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // group158UH (605:905)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // timeGqP (605:906)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                              width: 39.77*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/modules/images/time-shK.png',
                                width: 39.77*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // toprightCyw (605:907)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // cellularconnectionxiD (605:917)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                                    width: 22*fem,
                                    height: 13*fem,
                                    child: Image.asset(
                                      'assets/modules/images/cellular-connection-Y7T.png',
                                      width: 22*fem,
                                      height: 13*fem,
                                    ),
                                  ),
                                  Container(
                                    // wifi5H3 (605:912)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                    width: 21.21*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/modules/images/wifi-Hku.png',
                                      width: 21.21*fem,
                                      height: 15*fem,
                                    ),
                                  ),
                                  Container(
                                    // batterym9s (605:908)
                                    width: 30*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/modules/images/battery-and.png',
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
                      // frame165gM (605:922)
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
                            // raynetfinallogo1mZB (605:923)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                            width: 52.35*fem,
                            height: 40*fem,
                            child: Image.asset(
                              'assets/modules/images/raynet-final-logo-1-KAy.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // mingcutenotificationlineJJD (605:924)
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/modules/images/mingcute-notification-line-uzZ.png',
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