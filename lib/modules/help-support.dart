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
        // helpsupportv9w (605:1653)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 74.43*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group772Cy (605:1683)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group169Hb (605:1684)
                    padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                    width: double.infinity,
                    height: 50*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Container(
                      // group15rxh (605:1686)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timebvH (605:1687)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                            width: 39.77*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/time-cCH.png',
                              width: 39.77*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // toprightvSm (605:1688)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // cellularconnectionsso (605:1698)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                                  width: 22*fem,
                                  height: 13*fem,
                                  child: Image.asset(
                                    'assets/modules/images/cellular-connection-JhF.png',
                                    width: 22*fem,
                                    height: 13*fem,
                                  ),
                                ),
                                Container(
                                  // wifiaXK (605:1693)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                  width: 21.21*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/modules/images/wifi-EJu.png',
                                    width: 21.21*fem,
                                    height: 15*fem,
                                  ),
                                ),
                                Container(
                                  // batteryHgd (605:1689)
                                  width: 30*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/modules/images/battery-iUy.png',
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
                    // frame16pRf (605:1703)
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
                          // raynetfinallogo1jYd (605:1704)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                          width: 52.35*fem,
                          height: 40*fem,
                          child: Image.asset(
                            'assets/modules/images/raynet-final-logo-1-RiH.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // mingcutenotificationline457 (605:1705)
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/modules/images/mingcute-notification-line-B8u.png',
                            width: 30*fem,
                            height: 30*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame63n17 (605:1654)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame52Who (605:1656)
                    margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                    width: double.infinity,
                    height: 43*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // fluentiosarrow24filledxZo (605:1657)
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
                                'assets/modules/images/fluent-ios-arrow-24-filled-oqj.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // helpsupportEXK (605:1660)
                          'Help & Support',
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
                    // frame36Mbw (605:1661)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // dazzlecustomercare1iSV (605:1662)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.5*fem),
                          width: 393*fem,
                          height: 229.57*fem,
                          child: Image.asset(
                            'assets/modules/images/dazzle-customer-care-1-Md3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // howcanwehelpyoudZT (605:1663)
                          margin: EdgeInsets.fromLTRB(26.5*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'How can we help you?',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupyxkfwKF (TsmPVoDkmrcP7wLNJKYXKF)
                          padding: EdgeInsets.fromLTRB(15*fem, 9.5*fem, 15*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame141U4H (605:1664)
                                margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 204.5*fem, 10*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group138QTj (605:1665)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/modules/images/group-138-dNh.png',
                                        width: 30*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                    Text(
                                      // 7N9 (605:1669)
                                      '90009-90009',
                                      style: SafeGoogleFont (
                                        'Open Sans',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame142r4q (605:1670)
                                margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 181.5*fem, 9.5*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group139P4m (605:1671)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/modules/images/group-139-HfX.png',
                                        width: 30*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                    Text(
                                      // xyzgmailcomtnD (605:1675)
                                      'xyz@gmail.com',
                                      style: SafeGoogleFont (
                                        'Open Sans',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group142RXF (605:1676)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // writeuswkV (605:1680)
                                      margin: EdgeInsets.fromLTRB(19.22*fem, 0*fem, 0*fem, 5.5*fem),
                                      child: Text(
                                        'Write Us',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group503oX (605:1677)
                                      padding: EdgeInsets.fromLTRB(19.22*fem, 9.5*fem, 19.22*fem, 9.5*fem),
                                      width: double.infinity,
                                      height: 150*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffffffff)),
                                        color: Color(0xffdff4ff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                      ),
                                      child: Text(
                                        'Write your message here........',
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff6f6f6f),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame32RJH (605:1681)
                                width: double.infinity,
                                height: 53*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff000000),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
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
                      ],
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