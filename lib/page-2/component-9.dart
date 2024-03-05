import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 922;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component9ABB (605:286)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // property1component7HFo (605:287)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 96*fem, 0*fem),
              width: 393*fem,
              height: 197*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 0*fem),
                    blurRadius: 12.5*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupnz1fwbF (TskwTNwppUFKmKcwTMnz1f)
                    padding: EdgeInsets.fromLTRB(30.5*fem, 10*fem, 30.5*fem, 21*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame32rTK (605:288)
                          margin: EdgeInsets.fromLTRB(91*fem, 0*fem, 91*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 53*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'GO',
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
                        SizedBox(
                          height: 15*fem,
                        ),
                        Container(
                          // youreofflineUzV (605:290)
                          margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'You’re Offline',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15*fem,
                        ),
                        Container(
                          // pleaseclickthegobuttontoaccess (605:291)
                          constraints: BoxConstraints (
                            maxWidth: 332*fem,
                          ),
                          child: Text(
                            'Please click the \'GO\' button to access our online platform.',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component6rVF (605:292)
                    padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 35*fem),
                    width: double.infinity,
                    height: 129*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffdff4ff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(30*fem),
                        topRight: Radius.circular(30*fem),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 0*fem),
                          blurRadius: 12.5*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // youreonlineCxR (605:293)
                          margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 15*fem),
                          child: Text(
                            'You’re Online',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // youwillreceiveanotificationwhe (605:294)
                          'You will receive a notification when someone hires your security services.',
                          textAlign: TextAlign.center,
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
            Container(
              // property1component8zNV (605:295)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 48*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 393*fem,
                  height: 149*fem,
                  decoration: BoxDecoration (
                    color: Color(0xffdff4ff),
                    borderRadius: BorderRadius.only (
                      topLeft: Radius.circular(30*fem),
                      topRight: Radius.circular(30*fem),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0*fem, 0*fem),
                        blurRadius: 12.5*fem,
                      ),
                    ],
                  ),
                  child: Container(
                    // component7rQh (605:296)
                    padding: EdgeInsets.fromLTRB(15.5*fem, 10*fem, 15.5*fem, 10*fem),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffdff4ff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(30*fem),
                        topRight: Radius.circular(30*fem),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 0*fem),
                          blurRadius: 12.5*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame32m1s (605:297)
                          margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 59*fem, 15*fem),
                          width: double.infinity,
                          height: 64*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffa7ffb0),
                            borderRadius: BorderRadius.circular(100*fem),
                          ),
                          child: Center(
                            child: Text(
                              'You’re Online',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Noto Sans',
                                fontSize: 32*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // youwillreceiveanotificationwhe (605:299)
                          constraints: BoxConstraints (
                            maxWidth: 362*fem,
                          ),
                          child: Text(
                            'You will receive a notification when someone hires your security services.',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
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
          );
  }
}