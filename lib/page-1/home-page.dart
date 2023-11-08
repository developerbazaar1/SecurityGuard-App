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
        // homepagerfj (91:241)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // component2PQm (180:250)
              left: 0*fem,
              top: 100*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 393*fem,
                  height: 750*fem,
                  child: Container(
                    // group25S89 (I180:250;173:125)
                    padding: EdgeInsets.fromLTRB(12*fem, 20*fem, 11*fem, 135*fem),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/rectangle-10-bg-Ue5.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup2aqpw4u (TskpLqJEHd5C2UeTyN2AqP)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          width: double.infinity,
                          height: 72*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle11Gcy (I180:250;180:263)
                                left: 253*fem,
                                top: 42*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-11-3zy.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // component3yGV (192:873)
                                left: 0*fem,
                                top: 0*fem,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 109.5*fem, 10*fem),
                                    width: 370*fem,
                                    height: 45*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(20*fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame24P5K (192:874)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 0*fem),
                                          width: 25*fem,
                                          height: 25*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/frame-24-zWu.png',
                                            width: 25*fem,
                                            height: 25*fem,
                                          ),
                                        ),
                                        Text(
                                          // whereyouwantsecurityi7b (192:879)
                                          'Where you want security....',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff898989),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle12CYZ (I180:250;180:265)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 212*fem, 76*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-12-PDb.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // rectangle14gyX (I180:250;180:290)
                          margin: EdgeInsets.fromLTRB(72*fem, 0*fem, 0*fem, 130*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-14-yUm.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // autogroupw6u9EEM (TskpTuvmQdNDTZzhScW6U9)
                          margin: EdgeInsets.fromLTRB(109*fem, 0*fem, 72*fem, 53*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle18MJy (I180:250;180:595)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 26*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-18-omB.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // rectangle156GZ (I180:250;180:311)
                                margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-15-dUV.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle16zcq (I180:250;180:313)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 182*fem, 42*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-16-2SD.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // autogrouphektLRo (TskpZzay88H3mi11qLHEKT)
                          margin: EdgeInsets.fromLTRB(49*fem, 0*fem, 72*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle17tCR (I180:250;180:314)
                                margin: EdgeInsets.fromLTRB(0*fem, 29*fem, 189*fem, 0*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-17-Jdo.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // rectangle13QAm (I180:250;180:288)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-13-8TK.png',
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
              ),
            ),
            Positioned(
              // navbar8sT (180:548)
              left: 0*fem,
              top: 753*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(42.5*fem, 15*fem, 27*fem, 24*fem),
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
                  // frame17bW9 (180:549)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame239Xf (180:550)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.17*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // mingcutehome2line3sw (180:551)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/mingcute-home-2-line-Tv9.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
                            ),
                            Text(
                              // homea7B (180:555)
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
                        // frame276bK (180:556)
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
                                  // frame24Bsf (180:557)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/frame-24-AVX.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Text(
                                  // chatsv4Z (180:562)
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
                        // frame254Rf (180:563)
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
                                  // mingcutepaperlineiFK (180:564)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mingcute-paper-line-BtD.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Text(
                                  // bookingoXf (180:568)
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
                        // frame269bX (180:569)
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
                                // frame22Hhj (180:570)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/frame-22-WLh.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // profileyqT (180:575)
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
              // frame32vkh (180:623)
              left: 0*fem,
              top: 643*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 0*fem),
                width: 492*fem,
                height: 94*fem,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur (
                      sigmaX: 37.5*fem,
                      sigmaY: 37.5*fem,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame29RSZ (405:879)
                          padding: EdgeInsets.fromLTRB(27*fem, 8*fem, 17*fem, 10*fem),
                          width: 149*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupn4su9dT (TskqAovHjwSPnH8Pimn4Su)
                                margin: EdgeInsets.fromLTRB(27.5*fem, 0*fem, 2*fem, 12*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle16UQq (405:880)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 20.5*fem, 0*fem),
                                      width: 40*fem,
                                      height: 40*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-16-7Um.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    TextButton(
                                      // entypoinfowithcircleoCD (405:882)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 15*fem,
                                        height: 15*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/entypo-info-with-circle-v8h.png',
                                          width: 15*fem,
                                          height: 15*fem,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                // dogunitsk95fX (405:881)
                                'Dog Units -K9',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff005271),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15*fem,
                        ),
                        Container(
                          // frame33CEM (405:886)
                          padding: EdgeInsets.fromLTRB(13*fem, 8*fem, 9*fem, 10*fem),
                          width: 149*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup3yssK45 (TskqM8xQvqj3MULrCF3Yss)
                                margin: EdgeInsets.fromLTRB(41.5*fem, 0*fem, 10*fem, 12.5*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle1841f (555:492)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 20.5*fem, 0*fem),
                                      width: 40*fem,
                                      height: 40*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-18-15b.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    TextButton(
                                      // entypoinfowithcircleaEu (405:889)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 15*fem,
                                        height: 15*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/entypo-info-with-circle-K2y.png',
                                          width: 15*fem,
                                          height: 15*fem,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                // doorsupervisorsf1T (405:888)
                                'Door Supervisors',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff005271),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15*fem,
                        ),
                        Container(
                          // frame32ynq (405:869)
                          padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 19*fem, 10*fem),
                          width: 149*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupyduk6Mf (TskqXoKKFaURJKLcMtYduK)
                                margin: EdgeInsets.fromLTRB(44.5*fem, 0*fem, 0*fem, 12*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle13cau (555:491)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 20.5*fem, 0*fem),
                                      width: 40*fem,
                                      height: 40*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-13-5tM.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    TextButton(
                                      // entypoinfowithcircleLG1 (405:872)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 15*fem,
                                        height: 15*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/info.png',
                                          width: 15*fem,
                                          height: 15*fem,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // securityguards4ho (405:871)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                child: Text(
                                  'Security Guards',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group77xYH (319:2422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 100*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group165N1 (180:382)
                      padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                      width: double.infinity,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // group15nXK (180:384)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // timeYmP (180:385)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                              width: 39.77*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-1/images/time-gTT.png',
                                width: 39.77*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // toprightFvh (180:386)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // cellularconnectionPn1 (180:396)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                                    width: 22*fem,
                                    height: 13*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/cellular-connection-GXB.png',
                                      width: 22*fem,
                                      height: 13*fem,
                                    ),
                                  ),
                                  Container(
                                    // wifi4t9 (180:391)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                    width: 21.21*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/wifi-UtH.png',
                                      width: 21.21*fem,
                                      height: 15*fem,
                                    ),
                                  ),
                                  Container(
                                    // batteryo53 (180:387)
                                    width: 30*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/battery-Qu7.png',
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
                      // frame16WVF (180:225)
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
                            // raynetfinallogo1ERF (180:226)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                            width: 52.35*fem,
                            height: 40*fem,
                            child: Image.asset(
                              'assets/page-1/images/raynet-final-logo-1-aoK.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          TextButton(
                            // mingcutenotificationlineYRw (180:227)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/mingcute-notification-line-deZ.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
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