import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:get/get.dart';

import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Moduls/ChatScreen/controller/userChatController.dart';
import 'package:myapp/utils.dart';

import '../../notification-list.dart';

class UserChats extends GetView<UserChatController> {



 UserChats({super.key,});
  final arguments = Get.arguments();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    UserChatController userChatController = Get.put(UserChatController());
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
                                    arguments[0],
                                  ),
                                ),
                              ),
                            ),
                            Text(
arguments[0],
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
                                              'Hi '+arguments[1]+' 👋',
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
                                            'assets/page-2/images/finalImage/doubleCheck.png',
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
                              'assets/page-2/images/finalImage/bubbleLeft.png',
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
                                            'assets/page-2/images/finalImage/doubleCheck.png',
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
                                  arguments[0],
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
                                          'assets/page-2/images/finalImage/bottomCurve.png',
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
                                          'assets/page-2/images/finalImage/bottomCurve.png',
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
                                            arguments[1],
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
                                    height: 31*fem,
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
                                            'assets/page-2/images/finalImage/doubleCheck.png',
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
                              'assets/page-2/images/finalImage/bubbleLeft.png',
                              width: 14.5*fem,
                              height: 39*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // bubblerightqLd (293:1618)
                      margin: EdgeInsets.fromLTRB(113*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 3.5*fem),
                      width: 228*fem,
                      height: 85*fem,
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
                                              'assets/page-2/images/finalImage/doubleCheck.png',
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
                                  arguments[0],
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
                                          'assets/page-2/images/finalImage/bubbleTip.png',
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
                                          'assets/page-2/images/finalImage/bottomCurve.png',
                                          width: 6*fem,
                                          height: 7*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bubbleright9Zb (293:1638)
                                  padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 3.5*fem),
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
                                            arguments[1],
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
                                                height: 31*fem,
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
            Column(
              children: [
                Spacer(),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.only(left: 2,right: 5),
                    height: 48.0*fem,
                    decoration: BoxDecoration(
                      color: kBackgroundBottomsheet,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  
                    child: Row(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: IconButton(
                            onPressed: () {
                            //
                              //  userChatController.emojiState();
                            },
                            icon:  Icon(
                              Icons.emoji_emotions_outlined,
                              color: kEmojiColor,
                            ),
                          ),
                        ),
                        Obx(() =>  Expanded(
                          child: TextField(
                              controller: userChatController.controller.value,
                              style: const TextStyle(

                                  fontSize: 16.0, color: Colors.black87),
                              decoration: InputDecoration(
                                border: InputBorder.none,

                                hintText: 'Start typing...',
                                hintStyle: hintStyle,


                                contentPadding: const EdgeInsets.only(
                                    left: 16.0,
                                    bottom: 8.0,
                                    top: 8.0,
                                    right: 16.0),


                              )),
                        )),
                        Material(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent,
                          child: IconButton(
                              onPressed: () {
                                // send message
                              },
                              icon:  Icon(
                                Icons.send,
                                color: kIconSend,
                              )),
                        )
                      ],
                    )),
                // Obx(() => Offstage(
                //   offstage: !userChatController.emojishowing.value,
                //   child: SizedBox(
                //       height: 250,
                //       child: EmojiPicker(
                //         textEditingController: userChatController.controller.value,
                //         onBackspacePressed: userChatController.onBackSpacePressed,
                //         config: Config(
                //           columns: 7,
                //           // Issue: https://github.com/flutter/flutter/issues/28894
                //           emojiSizeMax: 32 *
                //               (foundation.defaultTargetPlatform ==
                //                   TargetPlatform.iOS
                //                   ? 1.30
                //                   : 1.0),
                //           verticalSpacing: 0,
                //           horizontalSpacing: 0,
                //           gridPadding: EdgeInsets.zero,
                //           initCategory: Category.RECENT,
                //           bgColor: const Color(0xFFF2F2F2),
                //           indicatorColor: Colors.blue,
                //           iconColor: Colors.grey,
                //           iconColorSelected: Colors.blue,
                //           backspaceColor: Colors.blue,
                //           skinToneDialogBgColor: Colors.white,
                //           skinToneIndicatorColor: Colors.grey,
                //           enableSkinTones: true,
                //           recentTabBehavior: RecentTabBehavior.RECENT,
                //           recentsLimit: 28,
                //           replaceEmojiOnLimitExceed: false,
                //           noRecents: const Text(
                //             'No Recents',
                //             style: TextStyle(fontSize: 20, color: Colors.black26),
                //             textAlign: TextAlign.center,
                //           ),
                //           loadingIndicator: const SizedBox.shrink(),
                //           tabIndicatorAnimDuration: kTabScrollDuration,
                //           categoryIcons: const CategoryIcons(),
                //           buttonMode: ButtonMode.MATERIAL,
                //           checkPlatformCompatibility: true,
                //         ),
                //       )),
                // ),
                // )

              ],
            )

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: LayoutBuilder(
            //     builder: (context,constraints) {
            //       return Container(width: MediaQuery.of(context).size.width,
            //         height: 50,
            //         margin: EdgeInsets.only(left: 20,right:
            //         20,bottom:
            //         10),
            //
            //         color: kBackgroundBottomsheet,
            //           child:Row(
            //             children: [
            //
            //               IconButton(onPressed: (){
            //                 print('message send');
            //               }, icon: Image(image: AssetImage('assets/page-2/images/finalImage/emoji.png'),height: 16,width: 16,)),
            //               Expanded(
            //
            //                 child: LayoutBuilder(
            //                   builder: (context,constraints) {
            //                     return TextFormField(
            //
            //                       maxLines: null,
            //                       decoration: InputDecoration(
            //
            //
            //                           hintText: "Start typing...",
            //                           border: InputBorder.none,
            //                           hintStyle: TextStyle(
            //                               color: kChatColor,
            //                               fontFamily: 'Nunito',
            //                               fontSize: 14,
            //
            //                               fontWeight: FontWeight.w400,
            //                               height: 2
            //                             /* 142.857% */
            //                           )
            //                       ),
            //                     );
            //                   }
            //                 ),
            //               ),
            //               IconButton(onPressed: (){
            //                 print('message send');
            //               }, icon: Icon(Icons.send,color: kColorUnderline,))
            //             ],
            //           )
            //
            //       );
            //     }
            //   ),
            // )

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
                    color: kAppbarUnderline, // Choose your border color
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
            image: AssetImage('assets/page-2/images/finalImage/logo.png'),
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
          image: AssetImage('assets/page-2/images/finalImage/notification.png'),
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