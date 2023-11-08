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
        // allysonrollinsQhf (605:978)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupz3rbkWd (TsmBJeY3XwQjnquQYnz3Rb)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(14*fem, 110*fem, 14*fem, 31*fem),
                width: 393*fem,
                height: 749*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame52SeM (605:979)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // fluentiosarrow24filledMWR (605:980)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 14*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-2/images/fluent-ios-arrow-24-filled-EL1.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame30b9s (605:982)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse1vC9 (605:983)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(15*fem),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-2/images/ellipse-1-bg-ZHK.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // allysonrollins3Gm (605:984)
                                  'Allyson Rollins',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 24*ffem,
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
                    Container(
                      // messagebubbleygD (605:1037)
                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 161*fem, 10*fem),
                      width: double.infinity,
                      height: 62*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse1JiV (605:1038)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(17.5*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-2/images/ellipse-1-bg-Wmo.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // messagebubble1cu (605:1039)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bubbleleftmry (605:1040)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // bubbletipXLM (605:1041)
                                        width: 14.5*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/bubble-tip-nKB.png',
                                          width: 14.5*fem,
                                          height: 12*fem,
                                        ),
                                      ),
                                      Container(
                                        // bottomcurverectangles9K (605:1044)
                                        width: 6*fem,
                                        height: 43*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xfff2f2f7),
                                        ),
                                      ),
                                      Container(
                                        // bottomcurvevectorN65 (605:1045)
                                        width: 6*fem,
                                        height: 7*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/bottomCurve.png',
                                          width: 6*fem,
                                          height: 7*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bubblerightGhF (605:1046)
                                  padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 3.5*fem),
                                  width: 144*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xfff2f2f7),
                                    borderRadius: BorderRadius.only (
                                      topRight: Radius.circular(6*fem),
                                      bottomRight: Radius.circular(6*fem),
                                    ),
                                  ),
                                  child: Container(
                                    // messageframeyLm (605:1047)
                                    width: 136*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // allysonrollinsj53 (605:1049)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                            'Allyson Rollins',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.3625*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // bodyEGh (605:1050)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // messagezWm (605:1051)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                                width: 76*fem,
                                                height: 31*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // messagebody8cy (605:1052)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                      child: Text(
                                                        'Hi Stefan 👋',
                                                        style: SafeGoogleFont (
                                                          'Nunito',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.4285714286*ffem/fem,
                                                          color: Color(0xff2c2c2e),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // spacerVM3 (605:1053)
                                                      width: double.infinity,
                                                      height: 1*fem,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xfff2f2f7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // amEJd (605:1055)
                                                '11:35 AM',
                                                style: SafeGoogleFont (
                                                  'Noto Sans',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff666668),
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
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightLcZ (605:1076)
                      margin: EdgeInsets.fromLTRB(51*fem, 0*fem, 118*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 7*fem, 3.5*fem),
                      width: double.infinity,
                      height: 113*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff2f2f7),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // messageframerqo (605:1077)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // messagebodypXj (605:1078)
                              constraints: BoxConstraints (
                                maxWidth: 181*fem,
                              ),
                              child: Text(
                                'Could you help protect my child to go camping within a few days at Yosemite National Park?',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4285714286*ffem/fem,
                                  color: Color(0xff2c2c2e),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupp2mpid7 (TsmCxS7mseun7cycCXP2MP)
                              padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // spacerT4u (605:1079)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3.5*fem),
                                    width: 180*fem,
                                    height: 1*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xfff2f2f7),
                                    ),
                                  ),
                                  Container(
                                    // amPUM (605:1082)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                    child: Text(
                                      '11:31 AM',
                                      style: SafeGoogleFont (
                                        'Noto Sans',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff666668),
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
                      // messagebubble7fF (605:985)
                      margin: EdgeInsets.fromLTRB(227*fem, 0*fem, 2.5*fem, 10*fem),
                      width: double.infinity,
                      height: 39*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // bubblerightDyB (605:986)
                            padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 0*fem, 3.5*fem),
                            width: 121*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff007aff),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(6*fem),
                                bottomLeft: Radius.circular(6*fem),
                              ),
                            ),
                            child: Container(
                              // bodyjRj (605:988)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // messageh7f (605:989)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                    width: 33*fem,
                                    height: 31*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // messagebodyRpM (605:990)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          child: Text(
                                            'Sure!',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.4285714286*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // spacerJt9 (605:991)
                                          width: double.infinity,
                                          height: 1*fem,
                                          decoration: BoxDecoration (
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame2886eh7 (605:993)
                                    margin: EdgeInsets.fromLTRB(0*fem, 14.5*fem, 0*fem, 0*fem),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // amzky (605:994)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                          child: Text(
                                            '11:31 AM',
                                            style: SafeGoogleFont (
                                              'Noto Sans',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.3625*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame2882tbT (605:995)
                                          width: 16*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-2/images/frame-2882-FGd.png',
                                            width: 16*fem,
                                            height: 8*fem,
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
                            // bubbleleftdZ3 (605:999)
                            width: 14.5*fem,
                            height: 39*fem,
                            child: Image.asset(
                              'assets/page-2/images/bubbleLeft.png',
                              width: 14.5*fem,
                              height: 39*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightAos (605:1026)
                      margin: EdgeInsets.fromLTRB(113*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 3.5*fem),
                      width: 228*fem,
                      height: 65*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff007aff),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // body48Z (605:1028)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // messagebody1pV (605:1029)
                              constraints: BoxConstraints (
                                maxWidth: 164*fem,
                              ),
                              child: Text(
                                'aIl really want to help you anytime',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4285714286*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupzx4hwy3 (TsmC6xYDK5UHgPUoqKZx4h)
                              width: double.infinity,
                              height: 17.5*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // spacer5ZT (605:1030)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 212*fem,
                                        height: 1*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // frame2886PKF (605:1031)
                                    left: 138*fem,
                                    top: 0.5*fem,
                                    child: Container(
                                      width: 74*fem,
                                      height: 17*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // amJSD (605:1032)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                            child: Text(
                                              '11:31 AM',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame2882Eam (605:1033)
                                            width: 16*fem,
                                            height: 8*fem,
                                            child: Image.asset(
                                              'assets/page-2/images/frame-2882-tNd.png',
                                              width: 16*fem,
                                              height: 8*fem,
                                            ),
                                          ),
                                        ],
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
                      // messagebubbleZ7F (605:1056)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 105*fem, 10*fem),
                      width: double.infinity,
                      height: 62*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse1GnM (605:1057)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(17.5*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-2/images/ellipse-1-bg-RFw.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // messagebubbleNaV (605:1058)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bubbleleftjfw (605:1059)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // bubbletipGfs (605:1060)
                                        width: 14.5*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/bubbleTip.png',
                                          width: 14.5*fem,
                                          height: 12*fem,
                                        ),
                                      ),
                                      Container(
                                        // bottomcurverectanglebCM (605:1063)
                                        width: 6*fem,
                                        height: 43*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xfff2f2f7),
                                        ),
                                      ),
                                      Container(
                                        // bottomcurvevectorvEd (605:1064)
                                        width: 6*fem,
                                        height: 7*fem,
                                        child: Image.asset(
                                          'assets/page-2/images/bottom-curve-vector-Xrq.png',
                                          width: 6*fem,
                                          height: 7*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bubblerightEm7 (605:1065)
                                  padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 3.5*fem),
                                  width: 204*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xfff2f2f7),
                                    borderRadius: BorderRadius.only (
                                      topRight: Radius.circular(6*fem),
                                      bottomRight: Radius.circular(6*fem),
                                    ),
                                  ),
                                  child: Container(
                                    // messageframe9NH (605:1066)
                                    width: 196*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // allysonrollinsUvM (605:1068)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                            'Allyson Rollins',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.3625*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // body9Fo (605:1069)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // messageJeV (605:1070)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                                width: 136*fem,
                                                height: 31*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // messagebodySkh (605:1071)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                      child: Text(
                                                        'Thank you in advance',
                                                        style: SafeGoogleFont (
                                                          'Nunito',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.4285714286*ffem/fem,
                                                          color: Color(0xff2c2c2e),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // spaceraM7 (605:1072)
                                                      width: double.infinity,
                                                      height: 1*fem,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xfff2f2f7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // amXGM (605:1074)
                                                '11:35 AM',
                                                style: SafeGoogleFont (
                                                  'Noto Sans',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff666668),
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
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightSeD (605:1084)
                      margin: EdgeInsets.fromLTRB(51*fem, 0*fem, 118*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 7*fem, 3.5*fem),
                      width: double.infinity,
                      height: 113*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff2f2f7),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // messageframeYSM (605:1085)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // messagebody5SH (605:1086)
                              constraints: BoxConstraints (
                                maxWidth: 181*fem,
                              ),
                              child: Text(
                                'I was very worried about his condition if he had to go alone in the middle of the forest like that',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4285714286*ffem/fem,
                                  color: Color(0xff2c2c2e),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupc43bynZ (TsmDEWVKeDeXdJR5NYC43B)
                              padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // spacerXJH (605:1087)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3.5*fem),
                                    width: 180*fem,
                                    height: 1*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xfff2f2f7),
                                    ),
                                  ),
                                  Container(
                                    // am4p1 (605:1090)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                    child: Text(
                                      '11:31 AM',
                                      style: SafeGoogleFont (
                                        'Noto Sans',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff666668),
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
                      // messagebubbleyg5 (605:1005)
                      margin: EdgeInsets.fromLTRB(159*fem, 0*fem, 0.5*fem, 0*fem),
                      width: double.infinity,
                      height: 39*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // bubblerightidf (605:1006)
                            padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 0*fem, 3.5*fem),
                            width: 191*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff007aff),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(6*fem),
                                bottomLeft: Radius.circular(6*fem),
                              ),
                            ),
                            child: Container(
                              // body3fw (605:1008)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // messageQWV (605:1009)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                    width: 103*fem,
                                    height: 31*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // messagebodyuy3 (605:1010)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          child: Text(
                                            'Ok it\'s very easy',
                                            style: SafeGoogleFont (
                                              'Nunito',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.4285714286*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // spacerp4R (605:1011)
                                          width: double.infinity,
                                          height: 1*fem,
                                          decoration: BoxDecoration (
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame2886Ma9 (605:1013)
                                    margin: EdgeInsets.fromLTRB(0*fem, 14.5*fem, 0*fem, 0*fem),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // amfKw (605:1014)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                          child: Text(
                                            '11:31 AM',
                                            style: SafeGoogleFont (
                                              'Noto Sans',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.3625*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame2882Q2d (605:1015)
                                          width: 16*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-2/images/doubleCheck.png',
                                            width: 16*fem,
                                            height: 8*fem,
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
                            // bubbleleft8zD (605:1019)
                            width: 14.5*fem,
                            height: 39*fem,
                            child: Image.asset(
                              'assets/page-2/images/bubble-left-RAh.png',
                              width: 14.5*fem,
                              height: 39*fem,
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
              // messagebarswo (605:1091)
              left: 0*fem,
              top: 749*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 15*fem, 20*fem, 15*fem),
                width: 393*fem,
                height: 103*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Container(
                  // footer1HK (605:1092)
                  padding: EdgeInsets.fromLTRB(12*fem, 14*fem, 12*fem, 14*fem),
                  width: double.infinity,
                  height: 48*fem,
                  decoration: BoxDecoration (
                    color: Color(0xffdff4ff),
                    borderRadius: BorderRadius.circular(5*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // emojiselectorWUy (605:1093)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                        width: 16*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-2/images/emoji-selector-PMs.png',
                          width: 16*fem,
                          height: 16*fem,
                        ),
                      ),
                      Container(
                        // starttypingQqF (605:1096)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 168*fem, 0*fem),
                        child: Text(
                          'Start typing...',
                          style: SafeGoogleFont (
                            'Nunito',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4285714286*ffem/fem,
                            color: Color(0xff666668),
                          ),
                        ),
                      ),
                      Container(
                        // frame2898LU1 (605:1097)
                        width: 48*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-2/images/frame-2898-kbj.png',
                          width: 48*fem,
                          height: 16*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group165Rb (605:1100)
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
                  // group15bPw (605:1102)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // timeu9j (605:1103)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                        width: 39.77*fem,
                        height: 15*fem,
                        child: Image.asset(
                          'assets/page-2/images/time-SQ9.png',
                          width: 39.77*fem,
                          height: 15*fem,
                        ),
                      ),
                      Container(
                        // toprightQsB (605:1104)
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // cellularconnectionArM (605:1114)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                              width: 22*fem,
                              height: 13*fem,
                              child: Image.asset(
                                'assets/page-2/images/cellular-connection-nZ7.png',
                                width: 22*fem,
                                height: 13*fem,
                              ),
                            ),
                            Container(
                              // wififYD (605:1109)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                              width: 21.21*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-2/images/wifi-ssF.png',
                                width: 21.21*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // batteryo8d (605:1105)
                              width: 30*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-2/images/battery-nyw.png',
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
              // frame536dX (605:1119)
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
                      // raynetfinallogo1CRf (605:1120)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                      width: 52.35*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-2/images/raynet-final-logo-1-3WR.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // mingcutenotificationlineXTw (605:1121)
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-2/images/mingcute-notification-line-u5B.png',
                        width: 30*fem,
                        height: 30*fem,
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