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
        // entertimefa9 (638:256)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16nuf (638:277)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15J7K (638:279)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // time46V (638:280)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-1/images/time-tx1.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightnHP (638:281)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionY1f (638:291)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/cellular-connection-SAm.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiFRs (638:286)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-KRK.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryWsb (638:282)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-FaR.png',
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
              // frame17Qxy (638:296)
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
                    // raynetfinallogo18ty (638:297)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-1/images/raynet-final-logo-1-Wky.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    // mingcutenotificationlineDQd (638:298)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-1/images/mingcute-notification-line-q8m.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              // component2u2Z (638:257)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 750*fem,
                child: Container(
                  // group2527B (I638:257;173:125)
                  padding: EdgeInsets.fromLTRB(14*fem, 20*fem, 14*fem, 135*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/page-1/images/rectangle-10-bg-wmB.png',
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupkafj7uK (Tsko4Y6hAJJGnDTSW1kAFj)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
                        width: double.infinity,
                        height: 152*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle122WV (I638:257;180:265)
                              left: 62*fem,
                              top: 89*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-12-g6M.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle11YDw (I638:257;180:263)
                              left: 251*fem,
                              top: 42*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-11-2nu.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group27g5F (638:259)
                              left: 0*fem,
                              top: 0*fem,
                              child: Container(
                                width: 365*fem,
                                height: 152*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame2903Am7 (638:260)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                      width: 350*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame29JcR (638:261)
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
                                                  // frame24DDb (638:262)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/frame-24-fuj.png',
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // fifeheightsu6R (638:267)
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
                                            // frame30pUH (638:268)
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
                                                  // frame248E5 (638:269)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.5*fem, 0*fem),
                                                  width: 20*fem,
                                                  height: 20*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/frame-24-RkM.png',
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // 47j (638:274)
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
                                          TextButton(
                                            // frame31By3 (638:312)
                                            onPressed: () {},
                                            style: TextButton.styleFrom (
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 68*fem, 10*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(20*fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // frame24uu3 (638:341)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/frame-24-9TF.png',
                                                      width: 25*fem,
                                                      height: 25*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // howlongyouwantsecurity1x5 (638:318)
                                                    'How Long you want security...',
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
                        // rectangle14Wtq (I638:257;180:290)
                        margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 0*fem, 130*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-14-zDF.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroupqyghzJD (TskoRH18pZVFX1qBNVqYGH)
                        margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 69*fem, 53*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle18vxZ (I638:257;180:595)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 26*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-18-Skh.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // rectangle15r5X (I638:257;180:311)
                              margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-15-mX7.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // rectangle16njs (I638:257;180:313)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 181*fem, 42*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-16-hBo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroupvspmw6y (TskoXBzwy9AieKwqv8VspM)
                        margin: EdgeInsets.fromLTRB(47*fem, 0*fem, 69*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle17oey (I638:257;180:314)
                              margin: EdgeInsets.fromLTRB(0*fem, 29*fem, 189*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-17-9sf.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // rectangle13YsT (I638:257;180:288)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-13-sMb.png',
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
          ],
        ),
      ),
          );
  }
}