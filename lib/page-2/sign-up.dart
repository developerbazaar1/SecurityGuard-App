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
        // signupMih (605:457)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33.5*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0x8cffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-2/images/rectangle-7-bg-n7K.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group1747K (605:489)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15ZZs (605:491)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timehAH (605:492)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-2/images/time-XnR.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightD8d (605:493)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionN1X (605:503)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-2/images/cellular-connection-Y8Z.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifi5Rj (605:498)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/wifi-Mgu.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryoMj (605:494)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/battery-2vV.png',
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
              // raynetfinallogo1izV (605:460)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.29*fem, 31.5*fem),
              width: 104.71*fem,
              height: 80*fem,
              child: Image.asset(
                'assets/page-2/images/raynet-final-logo-1-LSD.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // frame143ms (605:461)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 31*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // registerasasecurityprovidernUZ (605:462)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 25*fem),
                    constraints: BoxConstraints (
                      maxWidth: 178*fem,
                    ),
                    child: Text(
                      'REGISTER AS A \nSECURITY PROVIDER',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Noto Sans',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.3625*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // frame153QV (605:463)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18.5*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group4y3F (605:464)
                          padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                          width: double.infinity,
                          height: 71.5*fem,
                          child: Container(
                            // frame14W3B (605:465)
                            width: 113*fem,
                            height: 25*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcutepen2lineShX (605:466)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/mingcute-pen.png',
                                    width: 20*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Text(
                                  // fullnamekiD (605:470)
                                  'Full Name',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19*fem,
                        ),
                        Container(
                          // group5fqB (605:472)
                          padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                          width: double.infinity,
                          height: 71*fem,
                          child: Container(
                            // frame141u3 (605:473)
                            padding: EdgeInsets.fromLTRB(1.67*fem, 0*fem, 0*fem, 0*fem),
                            width: 147*fem,
                            height: 25*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // materialsymbolsalternateemailr (605:474)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.67*fem, 0*fem),
                                  width: 16.67*fem,
                                  height: 16.67*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/material-symbols-alternate-email-rounded-1Cd.png',
                                    width: 16.67*fem,
                                    height: 16.67*fem,
                                  ),
                                ),
                                Text(
                                  // emailaddressFHb (605:476)
                                  'Email Address',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19*fem,
                        ),
                        Container(
                          // group7AvM (605:478)
                          padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                          width: double.infinity,
                          height: 71*fem,
                          child: Container(
                            // frame14iS5 (605:479)
                            width: 114*fem,
                            height: 25*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcutecellphoneline4kq (605:480)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/mingcute-cellphone.png',
                                    width: 20*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Text(
                                  // phonenoyso (605:484)
                                  'Phone No.',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19*fem,
                        ),
                        Container(
                          // component14WMw (605:1988)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group143qf7 (605:1990)
                                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 165*fem, 20*fem),
                                padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // materialsymbolssecurityk1P (605:1991)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                      width: 13.33*fem,
                                      height: 16.67*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/material-symbols-security-dNR.png',
                                        width: 13.33*fem,
                                        height: 16.67*fem,
                                      ),
                                    ),
                                    Text(
                                      // chooseservice3WH (605:1993)
                                      'Choose Service',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouppwarPKF (Tsm25L5gihQPVTb2JmpwAR)
                                padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                                width: double.infinity,
                                height: 115*fem,
                                child: Container(
                                  // frame2904XAZ (605:2019)
                                  width: 205*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame154gH (605:1994)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                        width: double.infinity,
                                        height: 25*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // component13CXb (605:1995)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    'assets/page-2/images/component-13-UKB.png',
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // group144tfK (605:1996)
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rectangle16euP (605:1997)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/rectangle-16-sjf.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    // dogunitk9PMB (605:1998)
                                                    'Dog Unit - K9',
                                                    style: SafeGoogleFont (
                                                      'Nunito',
                                                      fontSize: 18*ffem,
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
                                      SizedBox(
                                        height: 20*fem,
                                      ),
                                      Container(
                                        // frame16KEq (605:2000)
                                        width: double.infinity,
                                        height: 25*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // component13f3o (605:2001)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    'assets/page-2/images/component-13-yDB.png',
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // group145MSR (605:2002)
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rectangle187Rb (605:2003)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/gard.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    // doorsupervisors3a9 (605:2004)
                                                    'Door Supervisors',
                                                    style: SafeGoogleFont (
                                                      'Nunito',
                                                      fontSize: 18*ffem,
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
                                      SizedBox(
                                        height: 20*fem,
                                      ),
                                      Container(
                                        // frame17aKB (605:2006)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                        width: double.infinity,
                                        height: 25*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // component13usF (605:2007)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    'assets/page-2/images/component-13-mds.png',
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // group146QJD (605:2008)
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rectangle13A2V (605:2009)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/rectangle-13-jzR.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    // securityguardsUos (605:2010)
                                                    'Security Guards',
                                                    style: SafeGoogleFont (
                                                      'Nunito',
                                                      fontSize: 18*ffem,
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
                    // frame224h (605:487)
                    margin: EdgeInsets.fromLTRB(90*fem, 0*fem, 90*fem, 0*fem),
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
                            'Next',
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
          ],
        ),
      ),
          );
  }
}