import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profileupdatepagezL1 (605:1709)
        width: double.infinity,
        height: 910*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame63iWu (605:1710)
              left: 14*fem,
              top: 110*fem,
              child: Container(
                width: 365*fem,
                height: 779*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupbd9kDiZ (TsmQJmsUpfbPknUNyCbd9K)
                      padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 25*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame52wuT (605:1711)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 177*fem, 0*fem),
                            width: double.infinity,
                            height: 43*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // fluentiosarrow24filled4DP (605:1712)
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
                                        'assets/modules/images/fluent-ios-arrow-24-filled-8d7.png',
                                        width: 30*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // editprofileLAu (605:1715)
                                  'Edit Profile',
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
                            // group32fU5 (605:1716)
                            margin: EdgeInsets.fromLTRB(123.75*fem, 0*fem, 123.75*fem, 0*fem),
                            width: double.infinity,
                            height: 100*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // ellipse4Pus (605:1717)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 100*fem,
                                      height: 100*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(50*fem),
                                          image: DecorationImage (
                                            fit: BoxFit.cover,
                                            image: AssetImage (
                                              'assets/modules/images/ellipse-4-bg.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group31ge5 (605:1718)
                                  left: 75.5*fem,
                                  top: 7*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/modules/images/group-31-crM.png',
                                        width: 30*fem,
                                        height: 30*fem,
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
                    Container(
                      // frame2900bW9 (605:1724)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // component2XPo (605:1725)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // name5RK (605:1727)
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                                  child: Text(
                                    'Name:',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16yWh (605:1728)
                                  padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffdff4ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Text(
                                    'Stefan J. Richards',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15*fem,
                          ),
                          Container(
                            // component3SfB (605:1730)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // emailaddressbny (605:1732)
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                                  child: Text(
                                    'Email Address:',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16v4Z (605:1733)
                                  padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffdff4ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Text(
                                    'stefanj.r@gmail.com',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15*fem,
                          ),
                          Container(
                            // component4zq7 (605:1735)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // phonenoYrd (605:1737)
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                                  child: Text(
                                    'Phone No. :',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16sP7 (605:1738)
                                  padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffdff4ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Text(
                                    '99999-99999',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15*fem,
                          ),
                          Container(
                            // component5A7K (605:1740)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // addressied (605:1742)
                                  margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                                  child: Text(
                                    'Address:',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16eHP (605:1743)
                                  padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffdff4ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Align(
                                    // marketplromseyso518nbunitedkin (605:1744)
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      child: Container(
                                        constraints: BoxConstraints (
                                          maxWidth: 276*fem,
                                        ),
                                        child: Text(
                                          'Market Pl, Romsey SO51 8NB, United Kingdom',
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff000000),
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
                    Container(
                      // component6UGR (605:1745)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // profiledescriptionDE1 (605:1747)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                            child: Text(
                              'Profile Description:',
                              style: SafeGoogleFont (
                                'Noto Sans',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // frame16jCM (605:1748)
                            padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 29*fem, 10*fem),
                            width: double.infinity,
                            height: 108*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffdff4ff),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              // loremipsumdolorsitametconsecte (605:1749)
                              child: SizedBox(
                                child: Container(
                                  constraints: BoxConstraints (
                                    maxWidth: 321*fem,
                                  ),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet consectetur. Ultrices vitae malesuada gravida lectus a et. Cum interdum sit pellentesque in mauris etiam adipiscing.',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame30uFF (605:1750)
                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 53*fem,
                          child: Container(
                            // frame32E2d (605:1751)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff005271),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Update',
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group16Y3K (605:1753)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 61*fem,
                  child: Image.asset(
                    'assets/modules/images/group-16.png',
                    width: 393*fem,
                    height: 61*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // frame643Vs (605:1772)
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
                      // raynetfinallogo1XR3 (605:1773)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                      width: 52.35*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/modules/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // mingcutenotificationlinedys (605:1774)
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/modules/images/mingcute-notification-line-reV.png',
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