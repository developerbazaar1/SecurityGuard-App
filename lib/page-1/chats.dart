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
        // chatsrjT (256:187)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16Ak9 (256:234)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15VXX (256:236)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeSxZ (256:237)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-1/images/time-hmT.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightySh (256:238)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionXUD (256:248)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/cellular-connection-HjP.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiRpV (256:243)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-b1j.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batterywH3 (256:239)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-fGD.png',
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
              // frame64eSM (293:2032)
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
                    // raynetfinallogo1vuf (293:2033)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-1/images/raynet-final-logo-1-6WV.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    // mingcutenotificationlineFww (293:2034)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-1/images/mingcute-notification-line-axH.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame63w45 (256:269)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 230*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame524uP (256:271)
                    margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(126.5*fem, 0*fem, 123.5*fem, 0*fem),
                    width: double.infinity,
                    height: 43*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame24Mdb (256:290)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 5*fem, 0*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-24-9cu.png',
                            width: 30*fem,
                            height: 30*fem,
                          ),
                        ),
                        Text(
                          // chatstNd (256:272)
                          'Chats',
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
                    // frame64dLD (256:343)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          // frame61Nob (256:352)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
                            width: double.infinity,
                            height: 70*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff898989)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame67G8H (259:385)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse1D3X (256:353)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                        width: 50*fem,
                                        height: 50*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(25*fem),
                                          image: DecorationImage (
                                            image: AssetImage (
                                              'assets/page-1/images/ellipse-1-bg-JND.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame65tfT (256:354)
                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 1*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // stefanjrichardsDSq (256:355)
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
                                            Text(
                                              // loremipsumdolorsitametconsecte (256:356)
                                              'Lorem ipsum dolor sit amet consectetur.',
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
                                  // frame66EMw (259:381)
                                  width: 42*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // amzM7 (259:382)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                        child: Text(
                                          '10:45AM',
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
                                        // frame665NZ (259:383)
                                        margin: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 8.5*fem, 0*fem),
                                        padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 0*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xff005271),
                                          borderRadius: BorderRadius.circular(30*fem),
                                        ),
                                        child: Text(
                                          '3',
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
                        ),
                        Container(
                          // frame62YG9 (256:357)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame68s3X (259:386)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1cWu (256:358)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-vyo.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame65JuX (256:359)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // vancedaugherty3MK (256:360)
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
                                          Text(
                                            // loremipsumdolorsitametconsecte (256:361)
                                            'Lorem ipsum dolor sit amet consectetur.',
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
                                // frame66tcq (259:388)
                                width: 46*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // yesterdayTA9 (259:389)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: Text(
                                        'Yesterday',
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
                                      // frame66niD (259:390)
                                      margin: EdgeInsets.fromLTRB(10.5*fem, 0*fem, 10.5*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff005271),
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        '1',
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
                          // frame63rxy (256:362)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame69nrd (259:387)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1K5s (256:363)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-87j.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame65AcH (256:364)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // germanbeanrk1 (256:365)
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
                                          Text(
                                            // loremipsumdolorsitametconsecte (256:366)
                                            'Lorem ipsum dolor sit amet consectetur.',
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
                                // frame66uiH (259:392)
                                width: 39*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tuesdaysQD (259:393)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: Text(
                                        'Tuesday',
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
                                      // frame66c6u (259:394)
                                      margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 7*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        '1',
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
                          // frame64Hyj (259:396)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame69Rq3 (259:397)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1MTo (259:398)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-Ugq.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame65eSu (259:399)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // bobatkinso4u (259:400)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'Bob Atkins',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // loremipsumdolorsitametconsecte (259:401)
                                            'Lorem ipsum dolor sit amet consectetur.',
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
                                // frame66qGV (259:402)
                                width: 39*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // mondaybFf (259:403)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: Text(
                                        'Monday',
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
                                      // frame66Jfs (259:404)
                                      margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 7*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        '1',
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
                          // frame65PBX (259:410)
                          padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff898989)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame69vBT (259:411)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse131B (259:412)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        image: DecorationImage (
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-1-bg-SN5.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame65j8u (259:413)
                                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // jarredwalterGed (259:414)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'Jarred Walter',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // loremipsumdolorsitametconsecte (259:415)
                                            'Lorem ipsum dolor sit amet consectetur.',
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
                                // frame665ry (259:416)
                                width: 42*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // FFf (259:417)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                      child: Text(
                                        '12/08/23',
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
                                      // frame66P6y (259:418)
                                      margin: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 8.5*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 0*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Text(
                                        '1',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // navbarSb3 (256:295)
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
                // frame17JNM (256:296)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame23fCu (256:297)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.17*fem, 0*fem),
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
                                // mingcutehome2linewAR (256:298)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mingcute-home-2-line-uaq.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // home3z9 (256:302)
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
                      // frame27P2R (256:303)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.17*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame24Kgm (256:304)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-1/images/frame-24-9Pf.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // chatsEYq (256:309)
                            'Chats',
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
                      // frame25MtM (256:310)
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
                                // mingcutepaperline5ZT (256:311)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mingcute-paper-line-U7j.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // bookingZzR (256:315)
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
                      // frame26iMX (256:316)
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
                              // frame22djP (256:317)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/frame-22-tVf.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
                            ),
                            Text(
                              // profileMQV (256:322)
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