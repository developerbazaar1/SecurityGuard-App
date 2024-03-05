import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1764;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component4JV7 (203:86)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 7*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // property1frame33ckh (203:85)
              padding: EdgeInsets.fromLTRB(15*fem, 30.5*fem, 15*fem, 30.5*fem),
              width: 393*fem,
              height: 339*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 37.5*fem,
                    sigmaY: 37.5*fem,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame30qdT (192:1146)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle16UwK (192:1147)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-16-CjB.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // dogunitsk9C6d (192:1148)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.5*fem, 0*fem),
                                  child: Text(
                                    'Dog Units -K9',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33siZ (192:1149)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // DnR (192:1150)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£24.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // YJu (192:1151)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£30.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame31AbB (192:1152)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle18D3f (555:500)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-18-1ih.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // doorsupervisors9T7 (414:72)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Door Supervisors',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33Gnd (192:1155)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // QP3 (192:1156)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£34.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // vsB (192:1157)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£44.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame29pBs (192:1140)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 37*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle13GZf (555:494)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-13.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // securityguardsCy7 (192:1142)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Security Guards',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33Wiu (192:1143)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // FwP (192:1144)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£12.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ngR (192:1145)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£19.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame32h2h (192:1158)
                        width: double.infinity,
                        height: 53*fem,
                        decoration: BoxDecoration (
                          color: Color(0x8c000000),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Done',
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
              ),
            ),
            SizedBox(
              width: 55*fem,
            ),
            Container(
              // property1frame32Md3 (203:84)
              padding: EdgeInsets.fromLTRB(15*fem, 30.5*fem, 15*fem, 30.5*fem),
              width: 393*fem,
              height: 339*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 37.5*fem,
                    sigmaY: 37.5*fem,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame332z5 (203:58)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle165Bf (203:59)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-16-JAd.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // dogunitsk9p9F (203:60)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.5*fem, 0*fem),
                                  child: Text(
                                    'Dog Units -K9',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33WGy (203:61)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // pYZ (203:62)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£24.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // 8ZF (203:63)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£30.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame31nth (555:506)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle18Tzq (555:507)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-18-VDj.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // doorsupervisorsPNh (555:508)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Door Supervisors',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame336nu (555:509)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // RqB (555:510)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£34.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ZgV (555:511)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£44.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame29HcV (192:1058)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 37*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff9addff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle13xid (555:512)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-13-tSd.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // securityguardsWEM (192:1060)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Security Guards',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33S81 (192:1061)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // Lz5 (192:1062)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£12.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // 4fB (192:1063)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£19.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      TextButton(
                        // frame32MuB (192:1133)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 53*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Done',
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 55*fem,
            ),
            Container(
              // property1frame34rb3 (203:83)
              padding: EdgeInsets.fromLTRB(15*fem, 30.5*fem, 15*fem, 30.5*fem),
              width: 393*fem,
              height: 339*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 37.5*fem,
                    sigmaY: 37.5*fem,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame30hLm (192:1169)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff9addff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle16imf (192:1170)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-16-hZK.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // dogunitsk9fS1 (192:1171)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.5*fem, 0*fem),
                                  child: Text(
                                    'Dog Units -K9',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33ZnH (192:1172)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // v73 (192:1173)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£24.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // 2fs (192:1174)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£30.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame34hGD (203:76)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle18YXj (555:514)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-18-iGh.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // doorsupervisorsUAV (414:71)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Door Supervisors',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33AZ7 (203:79)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // tV7 (203:80)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£34.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // 25X (203:81)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£44.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame33wTP (203:46)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle13mSR (555:513)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-13-3Jy.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // securityguardsH9s (203:48)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                                  child: Text(
                                    'Security Guards',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame33otu (203:49)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ZNH (203:50)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£12.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // TiZ (203:51)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£19.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      TextButton(
                        // frame35LnM (207:188)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 53*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Done',
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 55*fem,
            ),
            Container(
              // property1frame35aAu (203:82)
              padding: EdgeInsets.fromLTRB(15*fem, 30.5*fem, 15*fem, 30.5*fem),
              width: 393*fem,
              height: 339*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 37.5*fem,
                    sigmaY: 37.5*fem,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame34CTB (203:64)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle16VhB (203:65)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.5*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-16-qny.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // k9dogsecurityR53 (203:66)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                  child: Text(
                                    'K9 Dog Security',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame338EM (203:67)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // UZ7 (203:68)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£24.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // NeV (203:69)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£30.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      TextButton(
                        // frame31J2M (192:1196)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(26*fem, 10*fem, 29*fem, 10*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff9addff),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle18ozh (555:515)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-18-1Wh.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // doorsupervisorsx6u (414:74)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                child: Text(
                                  'Door Supervisors',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ),
                              Container(
                                // frame33EaD (192:1199)
                                margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // NwK (192:1200)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        '£34.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff005271),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // f9j (192:1201)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      child: Text(
                                        '£44.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          decoration: TextDecoration.lineThrough,
                                          color: Color(0xff000000),
                                          decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      Container(
                        // frame33ygD (203:52)
                        margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 23*fem, 10*fem),
                            width: double.infinity,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle13TLV (555:516)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/rectangle-13-SV7.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // securityguardsCJ5 (203:54)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                                  child: Text(
                                    'Security Guards',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame337A9 (203:55)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 0*fem, 5.5*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // qbw (203:56)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '£12.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff005271),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // Nrm (203:57)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '£19.99',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625*ffem/fem,
                                            decoration: TextDecoration.lineThrough,
                                            color: Color(0xff000000),
                                            decorationColor: Color(0xff000000),
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
                      SizedBox(
                        height: 15*fem,
                      ),
                      TextButton(
                        // frame354Do (207:190)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 53*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Done',
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