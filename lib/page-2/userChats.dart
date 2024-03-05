import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/utils.dart';

import 'notification-list.dart';

class UserChats extends StatelessWidget {

  final String userimage , username;

  const UserChats({super.key, required this.userimage, required this.username});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(

        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(14*fem, 10*fem, 14*fem, 0*fem),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame52Vpd (293:1062)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (

                      ),
                      child: Container(
                        // frame30S7b (293:1069)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse1A3b (293:1070)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15*fem),
                                image: DecorationImage (
                                  image: AssetImage (
                                    userimage,
                                  ),
                                ),
                              ),
                            ),
                            Text(

                              username,
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
                    Container(
                      // messagebubble9w7 (293:1404)
                      margin: EdgeInsets.fromLTRB(180*fem, 16*fem, 4.5*fem, 10*fem),
                      width: double.infinity,
                      height: 49*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // bubblerightgAM (293:1405)
                            padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 0*fem, 3.5*fem),
                            width: 166*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff007aff),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(6*fem),
                                bottomLeft: Radius.circular(6*fem),
                              ),
                            ),
                            child: Container(
                              // bodyzgq (293:1407)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // messagegZf (293:1408)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                    width: 76*fem,
                                    height: 51*fem,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // messagebodyCY1 (293:1409)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                            child: Text(
                                              'Hi '+username+' 👋',
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
                                            // spacerH3f (293:1410)
                                            width: double.infinity,
                                            height: 1*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0xff007aff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame2886uKw (293:1412)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // ameYR (293:1413)
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
                                          // frame2882yah (293:1414)
                                          width: 16*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/frame-2882-aho.png',
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
                            height: 50,


                            child: Image.asset(
                              'assets/page-1/images/bubble-left.png',
                              width: 14.5*fem,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightpbK (293:1460)
                      margin: EdgeInsets.fromLTRB(117*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 0*fem),
                      width: 228*fem,
                      height: 95*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff007aff),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // bodyLJm (293:1462)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(
                              // messagebody51T (293:1464)
                              constraints: BoxConstraints (
                                maxWidth: 217*fem,
                              ),
                              child: Text(
                                'Could you help protect my child to go camping within a few days at Yosemite National Park?',
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
                              // autogrouptfahBKP (TskSUJ5GQqJXgn2W2WTfAH)
                              width: double.infinity,
                              height: 27.5*fem,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
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
                                  Container(
                                    width: 184*fem,
                                    height: 17*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // amnKB (293:1468)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                          child: Text(
                                            '11:31 AM',
                                            textAlign: TextAlign.right,
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
                                          // frame2882K4D (293:1469)
                                          width: 16*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/frame-2882-bE9.png',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // messagebubbledqb (293:1434)
                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 185*fem, 10*fem),
                      width: double.infinity,
                      height: 62*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse1vJu (293:1473)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(17.5*fem),
                              image: DecorationImage (
                                image: AssetImage (
                                  userimage,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // messagebubblecxR (293:1438)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bubbleleftxmP (293:1439)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // bubbletip8A5 (293:1440)
                                        width: 14.5*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/bubble-tip-yW1.png',
                                          width: 14.5*fem,
                                          height: 12*fem,
                                        ),
                                      ),
                                      Container(
                                        // bottomcurverectangleSgZ (293:1443)
                                        width: 6*fem,
                                        height: 43*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xfff2f2f7),
                                        ),
                                      ),
                                      Container(
                                        // bottomcurvevectornkR (293:1444)
                                        width: 6*fem,
                                        height: 7*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/bottom-curve-vector.png',
                                          width: 6*fem,
                                          height: 7*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bubblerightsWy (293:1445)
                                  padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 3.5*fem),
                                  width: 120*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xfff2f2f7),
                                    borderRadius: BorderRadius.only (
                                      topRight: Radius.circular(6*fem),
                                      bottomRight: Radius.circular(6*fem),
                                    ),
                                  ),
                                  child: Container(
                                    // messageframeo9j (293:1446)
                                    width: 112*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(

                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                            username,
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
                                          // bodyGJD (293:1450)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // messageZo7 (293:1451)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                                width: 33*fem,
                                                height: 31*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // messagebodytKb (293:1452)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                      child: Text(
                                                        'Sure!',
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
                                                      // spaceryM3 (293:1453)
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
                                                // amY9F (293:1455)
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
                      // bubblerighttD7 (293:1425)
                      margin: EdgeInsets.fromLTRB(51*fem, 0*fem, 118*fem, 8*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 3.5*fem),
                      width: double.infinity,
                      height: 73*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff2f2f7),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // messageframeCjb (293:1426)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // messagebodyZa9 (293:1429)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 4*fem),
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
                                  color: Color(0xff3d3d3d),
                                ),
                              ),
                            ),
                            Container(
                              // spacerHW9 (293:1430)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.5*fem),
                              width: double.infinity,
                              height: 1*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff2f2f7),
                              ),
                            ),
                            Text(
                              // amdpu (293:1433)
                              '11:31 AM',
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
                    ),
                    Container(
                      // messagebubbleZTf (293:1571)
                      margin: EdgeInsets.fromLTRB(124*fem, 0*fem, 2.5*fem, 10*fem),
                      width: double.infinity,
                      height: 39*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // bubbleright5S1 (293:1572)
                            padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 0*fem, 3.5*fem),
                            width: 224*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff007aff),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(6*fem),
                                bottomLeft: Radius.circular(6*fem),
                              ),
                            ),
                            child: Container(
                              // bodyBjw (293:1574)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // messageYqP (293:1575)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                    width: 136*fem,
                                    height: 50*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // messagebodyggh (293:1576)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          child: Text(
                                            'Thank you in advance',
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
                                          // spacercaM (293:1577)
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
                                    // frame2886my3 (293:1579)
                                    margin: EdgeInsets.fromLTRB(0*fem, 14.5*fem, 0*fem, 0*fem),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // amGQ1 (293:1580)
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
                                          // frame2882CHf (293:1581)
                                          width: 16*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/frame-2882-y4M.png',
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
                            // bubbleleftWp9 (293:1585)
                            width: 14.5*fem,
                            height: 39*fem,
                            child: Image.asset(
                              'assets/page-1/images/bubble-left-kcH.png',
                              width: 14.5*fem,
                              height: 39*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightqLd (293:1618)
                      margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 3.5*fem),
                      width: 228*fem,
                      height: 90*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff007aff),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Container(
                        // bodyjB7 (293:1620)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // messagebodyUPb (293:1621)
                              constraints: BoxConstraints (
                                maxWidth: 205*fem,
                              ),
                              child: Text(
                                'I was very worried about his condition if he had to go alone in the middle of the forest like that',
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
                              // autogroupwiptkru (TskShsWyfdaoQ57BWCWiPT)
                              width: double.infinity,
                              height: 17.5*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // spaceriHw (293:1622)
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
                                    // frame2886ehP (293:1623)
                                    left: 138*fem,
                                    top: 0.5*fem,
                                    child: Container(
                                      width: 74*fem,
                                      height: 17*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // amM61 (293:1624)
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
                                            // frame2882gPB (293:1625)
                                            width: 16*fem,
                                            height: 8*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/frame-2882.png',
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
                      // messagebubbledJR (293:1629)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 138*fem, 0*fem),
                      width: double.infinity,
                      height: 62*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse1LyX (293:1630)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(17.5*fem),
                              image: DecorationImage (
                                image: AssetImage (
                                 userimage,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // messagebubblerBB (293:1631)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bubbleleftcRF (293:1632)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // bubbletipYZo (293:1633)
                                        width: 14.5*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/bubble-tip.png',
                                          width: 14.5*fem,
                                          height: 12*fem,
                                        ),
                                      ),
                                      Container(
                                        // bottomcurverectangletdf (293:1636)
                                        width: 6*fem,
                                        height: 43*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xfff2f2f7),
                                        ),
                                      ),
                                      Container(
                                        // bottomcurvevectorpXK (293:1637)
                                        width: 6*fem,
                                        height: 7*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/bottom-curve-vector-C6u.png',
                                          width: 6*fem,
                                          height: 7*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bubbleright9Zb (293:1638)
                                  padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                                  width: 171*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xfff2f2f7),
                                    borderRadius: BorderRadius.only (
                                      topRight: Radius.circular(6*fem),
                                      bottomRight: Radius.circular(6*fem),
                                    ),
                                  ),
                                  child: Container(
                                    // messageframeHA1 (293:1639)
                                    width: 163*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(

                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                           username,
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
                                          // bodyAUh (293:1642)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // messagevyf (293:1643)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0.5*fem),
                                                width: 103*fem,
                                                height: 37679*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // messagebodyUVP (293:1644)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                      child: Text(
                                                        'Ok it\'s very easy',
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
                                                      // spacerxvM (293:1645)
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
                                                // am8Zw (293:1647)
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


                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: LayoutBuilder(
                builder: (context,constraints) {
                  return Container(width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: EdgeInsets.only(left: 20,right:
                    20,bottom:
                    10),

                    color: ThemeColorBackgroundBottomsheet,
                      child:Row(
                        children: [

                          IconButton(onPressed: (){
                            print('message send');
                          }, icon: Image(image: AssetImage('assets/page-2/images/emoji-selector.png'),height: 16,width: 16,)),
                          Expanded(

                            child: LayoutBuilder(
                              builder: (context,constraints) {
                                return TextFormField(

                                  maxLines: null,
                                  decoration: InputDecoration(


                                      hintText: "Start typing...",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: ThemeColorChatColor,
                                          fontFamily: 'Nunito',
                                          fontSize: 14,

                                          fontWeight: FontWeight.w400,
                                          height: 2
                                        /* 142.857% */
                                      )
                                  ),
                                );
                              }
                            ),
                          ),
                          IconButton(onPressed: (){
                            print('message send');
                          }, icon: Icon(Icons.send,color: ThemeColorUnderline,))
                        ],
                      )

                  );
                }
              ),
            )

          ],
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
      leadingWidth: 70*fem,
      title:Container(
          margin: EdgeInsets.only(left: 0,top: 5,bottom: 5),
          child: Image(
            image: AssetImage('assets/page-2/images/logo.png'),
            height: 40,
            width: 52.35,
          ),),


      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }
        ,icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ) ,



      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationList()));
        }, icon:  Image(
          image: AssetImage('assets/page-2/images/notification.png'),
          height: 30,
          width: 30,
        ),),

        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}