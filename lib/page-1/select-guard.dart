import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/utils.dart';

class SelectGuaed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // selectguardG5w (192:899)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // component2bP7 (192:900)
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
                    // group25Gk9 (I192:900;173:125)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/rectangle-10-bg-9NR.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouprs3bQLZ (Tskk2TVRGDjAVT8iukrS3b)
                          padding: EdgeInsets.fromLTRB(14*fem, 20*fem, 14*fem, 130*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup8hazuHK (TskixKcHZtmusTxLDr8hAZ)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
                                width: double.infinity,
                                height: 152*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle1238d (I192:900;180:265)
                                      left: 62*fem,
                                      top: 89*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 30*fem,
                                          height: 30*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-12-gSV.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // rectangle11Zsf (I192:900;180:263)
                                      left: 251*fem,
                                      top: 42*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 30*fem,
                                          height: 30*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/rectangle-11-FQu.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // group27stM (638:411)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        width: 365*fem,
                                        height: 152*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // frame2903zi5 (638:412)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                              width: 350*fem,
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // frame29L1F (638:413)
                                                    padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 199*fem, 10*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.circular(20*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // frame24EcR (638:414)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                          width: 25*fem,
                                                          height: 25*fem,
                                                          child: Image.asset(
                                                            'assets/page-1/images/frame-24-CzM.png',
                                                            width: 25*fem,
                                                            height: 25*fem,
                                                          ),
                                                        ),
                                                        Text(
                                                          // fifeheightsLvM (638:419)
                                                          'Fife Heights',
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
                                                    height: 10*fem,
                                                  ),
                                                  Container(
                                                    // frame30yyK (638:420)
                                                    padding: EdgeInsets.fromLTRB(27.5*fem, 10*fem, 201*fem, 10*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.circular(20*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // frame24WCZ (638:421)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.5*fem, 0*fem),
                                                          width: 20*fem,
                                                          height: 20*fem,
                                                          child: Image.asset(
                                                            'assets/page-1/images/frame-24-Ut1.png',
                                                            width: 20*fem,
                                                            height: 20*fem,
                                                          ),
                                                        ),
                                                        Text(
                                                          // EPT (638:424)
                                                          '12/09/2023',
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
                                                    height: 10*fem,
                                                  ),
                                                  Container(
                                                    // frame31m8V (638:425)
                                                    padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 220*fem, 10*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.circular(20*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // frame24tiu (638:426)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                          width: 25*fem,
                                                          height: 25*fem,
                                                          child: Image.asset(
                                                            'assets/page-1/images/frame-24-5PP.png',
                                                            width: 25*fem,
                                                            height: 25*fem,
                                                          ),
                                                        ),
                                                        Text(
                                                          // hoursCzV (638:429)
                                                          '10 Hours',
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
                              Container(
                                // rectangle14LL1 (I192:900;180:290)
                                margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 0*fem, 0*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-14-hCM.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupdeedERP (TskjMtmLskt6nJUAUqDeED)
                          width: double.infinity,
                          height: 375*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle13P3P (I192:900;180:288)
                                left: 280*fem,
                                top: 181*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-13-fXf.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle16hZs (I192:900;180:313)
                                left: 91*fem,
                                top: 109*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-16-wnR.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle17DYD (I192:900;180:314)
                                left: 61*fem,
                                top: 210*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-17-d8V.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle15jFf (I192:900;180:311)
                                left: 280*fem,
                                top: 26*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-15-APB.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle18RPP (I192:900;180:595)
                                left: 121*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-18-miH.png',
                                      fit: BoxFit.cover,
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
                ),
              ),
            ),
            Positioned(
              // component5XhK (264:853)
              left: 0*fem,
              top: 513*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 30.5*fem, 15*fem, 30.5*fem),
                width: 393*fem,
                height: 339*fem,
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
                      // frame30bBP (I264:853;192:1146)
                      margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle16Sho (I264:853;192:1147)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-16-y8D.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // dogunitsk9XUM (I264:853;192:1148)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.5*fem, 0*fem),
                                child: Text(
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
                              ),
                              Container(
                                // frame33eYy (I264:853;192:1149)
                                margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // nv5 (I264:853;192:1150)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        '£24.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff005271),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // VpV (I264:853;192:1151)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      child: Text(
                                        '£30.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          decoration: TextDecoration.lineThrough,
                                          color: Color(0xff000000),
                                          decorationColor: Color(0xff000000),
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
                    SizedBox(
                      height: 15*fem,
                    ),
                    Container(
                      // frame31DEh (I264:853;192:1152)
                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle187L5 (I264:853;555:500)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-18-szR.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // doorsupervisorsd3X (I264:853;414:72)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                child: Text(
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
                              ),
                              Container(
                                // frame33GMP (I264:853;192:1155)
                                margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // zYH (I264:853;192:1156)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        '£34.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff005271),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // XYD (I264:853;192:1157)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      child: Text(
                                        '£44.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          decoration: TextDecoration.lineThrough,
                                          color: Color(0xff000000),
                                          decorationColor: Color(0xff000000),
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
                    SizedBox(
                      height: 15*fem,
                    ),
                    Container(
                      // frame293WZ (I264:853;192:1140)
                      margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 37*fem, 10*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle13Hfo (I264:853;555:494)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-13-voT.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // securityguardspvd (I264:853;192:1142)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
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
                              Container(
                                // frame33X4M (I264:853;192:1143)
                                margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // 4py (I264:853;192:1144)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        '£12.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff005271),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // yh3 (I264:853;192:1145)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      child: Text(
                                        '£19.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          decoration: TextDecoration.lineThrough,
                                          color: Color(0xff000000),
                                          decorationColor: Color(0xff000000),
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
                    SizedBox(
                      height: 15*fem,
                    ),
                    Container(
                      // frame324yP (I264:853;192:1158)
                      width: double.infinity,
                      height: 53*fem,
                      decoration: BoxDecoration (
                        color: Color(0x8c000000),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Nunito',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group16n8h (192:901)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                width: 393*fem,
                height: 50*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Container(
                  // group15uDK (192:903)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // timeDUu (192:904)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                        width: 39.77*fem,
                        height: 15*fem,
                        child: Image.asset(
                          'assets/page-1/images/time-4p9.png',
                          width: 39.77*fem,
                          height: 15*fem,
                        ),
                      ),
                      Container(
                        // toprightigZ (192:905)
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // cellularconnection5GD (192:915)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                              width: 22*fem,
                              height: 13*fem,
                              child: Image.asset(
                                'assets/page-1/images/cellular-connection-kch.png',
                                width: 22*fem,
                                height: 13*fem,
                              ),
                            ),
                            Container(
                              // wifiZx5 (192:910)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                              width: 21.21*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-1/images/wifi-71j.png',
                                width: 21.21*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // batteryU3T (192:906)
                              width: 30*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-1/images/battery-953.png',
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
            ),
            Positioned(
              // frame17PAR (293:2014)
              left: 0*fem,
              top: 50*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(30*fem, 5*fem, 30*fem, 5*fem),
                width: 393*fem,
                height: 50*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff3a3a3a)),
                  color: Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // raynetfinallogo1fdj (293:2015)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                      width: 52.35*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-1/images/raynet-final-logo-1-kUZ.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    TextButton(
                      // mingcutenotificationlineBMB (293:2016)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/mingcute-notification-line-9jw.png',
                          width: 30*fem,
                          height: 30*fem,
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