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
        // enterdatea5f (192:631)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16GDP (192:661)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15mfw (192:663)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeun9 (192:664)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-1/images/time-jnR.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightqQu (192:665)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionmJZ (192:675)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-1/images/cellular-connection-hZT.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifi5a9 (192:670)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/wifi-Y4Z.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryA5o (192:666)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-i8q.png',
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
              // frame175Cm (293:2008)
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
                    // raynetfinallogo1Pz9 (293:2009)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-1/images/raynet-final-logo-1-bry.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    // mingcutenotificationlineKcu (293:2010)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/page-1/images/mingcute-notification-line-nDF.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              // component2ony (192:632)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 750*fem,
                child: Container(
                  // group256n5 (I192:632;173:125)
                  padding: EdgeInsets.fromLTRB(14*fem, 20*fem, 14*fem, 135*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/page-1/images/rectangle-10-bg-Kbw.png',
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupsjj5n97 (Tskms56SVbCwwu6LaDsJJ5)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
                        width: double.infinity,
                        height: 119*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle12K93 (I192:632;180:265)
                              left: 62*fem,
                              top: 89*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-12-ACq.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle11pbb (I192:632;180:263)
                              left: 251*fem,
                              top: 42*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-11-aHF.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // component3985 (192:990)
                              left: 0*fem,
                              top: 0*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 365*fem,
                                  height: 100*fem,
                                  child: Container(
                                    // group27pzu (192:991)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame2903Aos (638:248)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 350*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame297DK (192:992)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
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
                                                      // frame24RUu (192:993)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                      width: 25*fem,
                                                      height: 25*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/frame-24-rWm.png',
                                                        width: 25*fem,
                                                        height: 25*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // fifeheightshxD (192:998)
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
                                              TextButton(
                                                // frame30DQm (192:999)
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 194*fem, 10*fem),
                                                  width: double.infinity,
                                                  decoration: BoxDecoration (
                                                    color: Color(0xffffffff),
                                                    borderRadius: BorderRadius.circular(20*fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // frame24fXf (192:1000)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                        width: 25*fem,
                                                        height: 25*fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/calenderIcon.png',
                                                          width: 25*fem,
                                                          height: 25*fem,
                                                        ),
                                                      ),
                                                      Text(
                                                        // choosedatencH (192:1005)
                                                        'Choose Date',
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // rectangle14hjF (I192:632;180:290)
                        margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 0*fem, 130*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-14-9XP.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroupb82d32R (Tskn9jHMFNFUcU9bD3b82D)
                        margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 69*fem, 53*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle189LM (I192:632;180:595)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 26*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-18-wiZ.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // rectangle155zh (I192:632;180:311)
                              margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-15-kZX.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // rectangle16pxH (I192:632;180:313)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 181*fem, 42*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-16-dsX.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroupafcdNU1 (TsknGE6XPAEitft3DVAFcd)
                        margin: EdgeInsets.fromLTRB(47*fem, 0*fem, 69*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle176eu (I192:632;180:314)
                              margin: EdgeInsets.fromLTRB(0*fem, 29*fem, 189*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-17-oi9.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // rectangle133KF (I192:632;180:288)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/rectangle-13-dVT.png',
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