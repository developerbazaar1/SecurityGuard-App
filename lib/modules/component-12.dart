import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/utils.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 370;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component127dK (605:323)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // property1group8aG1 (605:324)
              width: double.infinity,
              height: 80*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame15Hw7 (605:325)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 35*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 11.66*fem, 10*fem),
                        width: double.infinity,
                        height: 45*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group143Nhf (605:326)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136.66*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // materialsymbolssecuritytAD (605:327)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                    width: 13.33*fem,
                                    height: 16.67*fem,
                                    child: Image.asset(
                                      'assets/modules/images/symbols-security.png',
                                      width: 13.33*fem,
                                      height: 16.67*fem,
                                    ),
                                  ),
                                  Text(
                                    // chooseserviceCgh (605:329)
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
                              // fluentiosarrow24regularif3 (605:330)
                              margin: EdgeInsets.fromLTRB(0*fem, 7.08*fem, 0*fem, 0*fem),
                              width: 16.68*fem,
                              height: 8.75*fem,
                              child: Image.asset(
                                'assets/modules/images/fluent-ios-arrow-24-regular-1zq.png',
                                width: 16.68*fem,
                                height: 8.75*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // line1cVX (605:332)
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0x8c000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50*fem,
            ),
            Container(
              // property1frame108Ts (605:333)
              padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: 180*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame14rem (605:334)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.66*fem, 0*fem),
                    width: double.infinity,
                    height: 25*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group143BBF (605:335)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136.66*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // materialsymbolssecurityJmf (605:336)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                width: 13.33*fem,
                                height: 16.67*fem,
                                child: Image.asset(
                                  'assets/modules/images/material-symbols-security-rxH.png',
                                  width: 13.33*fem,
                                  height: 16.67*fem,
                                ),
                              ),
                              Text(
                                // chooseservicepzu (605:338)
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
                          // fluentiosarrow24regularYAD (605:339)
                          margin: EdgeInsets.fromLTRB(0*fem, 7.08*fem, 0*fem, 0*fem),
                          width: 16.68*fem,
                          height: 8.75*fem,
                          child: Image.asset(
                            'assets/modules/images/fluent-ios-arrow-24-regular-4cZ.png',
                            width: 16.68*fem,
                            height: 8.75*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    // frame15DXF (605:341)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(55*fem, 10*fem, 83*fem, 10*fem),
                      width: double.infinity,
                      height: 45*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // component136b3 (605:1912)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/modules/images/component-13-Lyo.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // group144Pq3 (605:1921)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle16wLm (605:342)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/modules/images/rectangle-16-T2h.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // dogunitk9fnZ (605:343)
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
                  ),
                  Container(
                    // autogroupfyurQEM (TskxVbiUzF3sjp4KukfYUR)
                    width: double.infinity,
                    height: 45*fem,
                    child: TextButton(
                      // frame16m4u (605:345)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(55*fem, 10*fem, 55*fem, 10*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // component13FEy (605:1915)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 25*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/modules/images/component-13-MB7.png',
                                    width: 25*fem,
                                    height: 25*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group1456WV (605:1922)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle18rVf (605:346)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/modules/images/rectangle-18-ctq.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    // doorsupervisorsbTF (605:347)
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
                    ),
                  ),
                  Container(
                    // autogroupw2upwX7 (TskxfvkcB9LXK1GnPDw2uP)
                    width: double.infinity,
                    height: 45*fem,
                    child: TextButton(
                      // frame17VHj (605:349)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(55*fem, 10*fem, 66*fem, 10*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // component13pau (605:1918)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 25*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/modules/images/component-13.png',
                                    width: 25*fem,
                                    height: 25*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group146gND (605:1923)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle13e49 (605:350)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/modules/images/rectangle-13-fYu.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    // securityguardsZS1 (605:351)
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
                    ),
                  ),
                  Container(
                    // line1ukm (605:352)
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0x8c000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50*fem,
            ),
            Container(
              // property1frame11rvu (605:353)
              width: double.infinity,
              height: 90*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // frame14ByB (605:354)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 11.66*fem, 10*fem),
                      width: double.infinity,
                      height: 45*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group143hAq (605:355)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136.66*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // materialsymbolssecurityZiq (605:356)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                  width: 13.33*fem,
                                  height: 16.67*fem,
                                  child: Image.asset(
                                    'assets/modules/images/material-symbols-security.png',
                                    width: 13.33*fem,
                                    height: 16.67*fem,
                                  ),
                                ),
                                Text(
                                  // chooseserviceV6h (605:358)
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
                            // fluentiosarrow24regularqRT (605:359)
                            margin: EdgeInsets.fromLTRB(0*fem, 7.08*fem, 0*fem, 0*fem),
                            width: 16.68*fem,
                            height: 8.75*fem,
                            child: Image.asset(
                              'assets/modules/images/fluent-ios-arrow-24-regular-MX7.png',
                              width: 16.68*fem,
                              height: 8.75*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame159BF (605:361)
                    margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 108*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle16Thj (605:362)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-16-4sB.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          // dogunitk9AMF (605:363)
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
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // autogroupftdkHwf (TskyH5QhvnxbhEBTxqfTdK)
                    width: double.infinity,
                    height: 1*fem,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50*fem,
            ),
            Container(
              // property1frame12EM7 (605:367)
              width: double.infinity,
              height: 90*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // frame14AEm (605:368)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 11.66*fem, 10*fem),
                      width: double.infinity,
                      height: 45*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group143STB (605:369)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136.66*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // materialsymbolssecurityMKF (605:370)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                  width: 13.33*fem,
                                  height: 16.67*fem,
                                  child: Image.asset(
                                    'assets/modules/images/material-symbols-security-GdP.png',
                                    width: 13.33*fem,
                                    height: 16.67*fem,
                                  ),
                                ),
                                Text(
                                  // chooseservicerWu (605:372)
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
                            // fluentiosarrow24regularoS9 (605:373)
                            margin: EdgeInsets.fromLTRB(0*fem, 7.08*fem, 0*fem, 0*fem),
                            width: 16.68*fem,
                            height: 8.75*fem,
                            child: Image.asset(
                              'assets/modules/images/fluent-ios-arrow-24-regular-w7f.png',
                              width: 16.68*fem,
                              height: 8.75*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame167Sq (605:375)
                    margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 80*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle18qNq (605:376)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/modules/images/rectangle-18-ZjP.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          // doorsupervisorsZ3w (605:377)
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
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // autogroupnrvms4d (TskybjYHVamWbhvYkinrvM)
                    width: double.infinity,
                    height: 1*fem,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50*fem,
            ),
            Container(
              // property1frame13azd (605:381)
              width: double.infinity,
              height: 90*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // frame14LD7 (605:382)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 11.66*fem, 10*fem),
                      width: double.infinity,
                      height: 45*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group143rx9 (605:383)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136.66*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(3.33*fem, 0*fem, 0*fem, 0*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // materialsymbolssecurityzHf (605:384)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.33*fem, 0*fem),
                                  width: 13.33*fem,
                                  height: 16.67*fem,
                                  child: Image.asset(
                                    'assets/modules/images/material-symbols-security-RjP.png',
                                    width: 13.33*fem,
                                    height: 16.67*fem,
                                  ),
                                ),
                                Text(
                                  // chooseserviceTh3 (605:386)
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
                            // fluentiosarrow24regularQcH (605:387)
                            margin: EdgeInsets.fromLTRB(0*fem, 7.08*fem, 0*fem, 0*fem),
                            width: 16.68*fem,
                            height: 8.75*fem,
                            child: Image.asset(
                              'assets/modules/images/fluent-ios-arrow-24-regular.png',
                              width: 16.68*fem,
                              height: 8.75*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame17JSm (605:389)
                    margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 91*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle13bgm (605:390)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/modules/images/Gards.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          // securityguardswVj (605:391)
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
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // autogroupms4mH3o (TskyvJqfmuxjumiod4Ms4m)
                    width: double.infinity,
                    height: 1*fem,
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