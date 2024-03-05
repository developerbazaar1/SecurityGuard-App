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
        // bookingTrh (259:427)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16aRX (259:515)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15HKw (259:517)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timedub (259:518)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-1/images/time-Y7j.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightiw3 (259:519)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionsow (259:529)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/cellular-connection-zu7.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifinvu (259:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-LL9.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryKfw (259:520)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-jwF.png',
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
              // frame64SEm (293:2026)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
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
                    // raynetfinallogo1M6q (293:2027)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-1/images/raynet-final-logo-1-pc1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    // mingcutenotificationline4G9 (293:2028)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-1/images/mingcute-notification-line-eru.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame63nC9 (259:428)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 319*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame65VsF (293:1661)
                    margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(111.5*fem, 0*fem, 106.5*fem, 0*fem),
                    width: double.infinity,
                    height: 43*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // mingcutepaperlinebfP (293:1662)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 5*fem, 0*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/mingcute-paper-line-hr1.png',
                            width: 30*fem,
                            height: 30*fem,
                          ),
                        ),
                        Text(
                          // bookingGFj (293:1666)
                          'Booking',
                          style: SafeGoogleFont (
                            'Noto Sans',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame64Q73 (259:436)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          // frame61Wvm (259:437)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 9*fem),
                            width: double.infinity,
                            height: 87*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff898989)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame67BX7 (259:438)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 0*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse1jHj (259:439)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 1*fem),
                                        width: 60*fem,
                                        height: 60*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(30*fem),
                                          image: DecorationImage (
                                            image: AssetImage (
                                              'assets/page-1/images/ellipse-1-bg-nB3.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame66qbf (259:548)
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // stefanjrichardszUZ (259:549)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                              child: Text(
                                                'Stefan J. Richards',
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // mondayoct24h85 (259:550)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                              child: Text(
                                                'Monday, Oct 24',
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // ampTb (259:551)
                                              '10:45 AM',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
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
                                Container(
                                  // frame66kc9 (259:443)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 81*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mminsbeforetyF (259:444)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                        child: Text(
                                          '30m mins before',
                                          style: SafeGoogleFont (
                                            'Noto Sans',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff898989),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame66yzh (259:445)
                                        padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 0*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xff00ff19),
                                          borderRadius: BorderRadius.circular(30*fem),
                                        ),
                                        child: Text(
                                          'Confirmed',
                                          style: SafeGoogleFont (
                                            'Noto Sans',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
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
                        Container(
                          // frame62e5F (259:447)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 9*fem),
                          width: double.infinity,
                          height: 87*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame68mff (259:448)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1X93 (259:449)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 1*fem),
                                      width: 60*fem,
                                      height: 60*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(30*fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-Prq.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame66qvR (259:558)
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // vancedaughertyz2d (259:559)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'Vance Daugherty',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // sundayaug24WFs (259:560)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                            child: Text(
                                              'Sunday, Aug 24',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // pmzB3 (259:561)
                                            '08:22 PM',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
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
                              Container(
                                // frame69XAy (259:566)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 73*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // TqK (259:567)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                      child: Text(
                                        '12/08/2023',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff898989),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame66bgd (259:568)
                                      padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff898989),
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        'Canceled',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame63VGD (259:457)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 9*fem),
                          width: double.infinity,
                          height: 87*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame69oGu (259:458)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1jgM (259:459)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 1*fem),
                                      width: 60*fem,
                                      height: 60*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(30*fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-CPB.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame66s1s (259:575)
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // germanbeannuX (259:576)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'German Bean',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // thursdayjuly22WKj (259:577)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                            child: Text(
                                              'Thursday, July 22',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // pm1nH (259:578)
                                            '03:59 PM',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
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
                              Container(
                                // frame70xxR (259:579)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 81*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // 4Vf (259:580)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                      child: Text(
                                        '20/07/2023',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff898989),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame66A2u (259:581)
                                      padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff00ff19),
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        'Confirmed',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w500,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // navbarGLq (259:487)
              padding: EdgeInsets.fromLTRB(27*fem, 15*fem, 27*fem, 24*fem),
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
                // frame17nKB (259:488)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame23WW5 (259:489)
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
                                // mingcutehome2lineyuT (259:490)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mingcute-home-2-line-LAm.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // homerTT (259:494)
                                'Home',
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
                      // frame27zpZ (259:495)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.17*fem, 0*fem),
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
                                // frame24JKT (259:496)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/frame-24-BGm.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // chatsDBX (259:501)
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
                      // frame25A6m (259:502)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.17*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // mingcutepaperlineUt9 (259:503)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-1/images/mingcute-paper-line-VRb.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // booking1NH (259:507)
                            'Booking',
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
                    TextButton(
                      // frame269jP (259:508)
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
                              // frame22fhj (259:509)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/frame-22-Jxy.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
                            ),
                            Text(
                              // profileyiR (259:514)
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
          );
  }
}