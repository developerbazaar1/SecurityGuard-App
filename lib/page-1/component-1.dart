import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 370;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component1cyw (99:345)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              // property1group41ub (99:344)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: 80*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame15Jdo (114:557)
                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 173*fem, 45*fem),
                      padding: EdgeInsets.fromLTRB(1.67*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // materialsymbolsalternateemailr (114:558)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.67*fem, 0*fem),
                            width: 16.67*fem,
                            height: 16.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/material-symbols-alternate-email-rounded-96h.png',
                              width: 16.67*fem,
                              height: 16.67*fem,
                            ),
                          ),
                          Text(
                            // emailaddressSX3 (114:560)
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
                    Container(
                      // line2Kqj (605:2031)
                      width: double.infinity,
                      height: 1*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffa0a0a0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 56*fem,
            ),
            TextButton(
              // property1group184HX (99:343)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupsuuo8oB (TskNDaq1sd2YFv77aqsUuo)
                      padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 1*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame15K6y (114:566)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 163*fem, 19*fem),
                            padding: EdgeInsets.fromLTRB(1.67*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // materialsymbolsalternateemailr (114:567)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.67*fem, 0*fem),
                                  width: 16.67*fem,
                                  height: 16.67*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/material-symbols-alternate-email-rounded.png',
                                    width: 16.67*fem,
                                    height: 16.67*fem,
                                  ),
                                ),
                                Text(
                                  // emailaddressuay (114:569)
                                  'Email Address',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xfffe0f0f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            // useremaicom2Dbf (99:332)
                            'user@emai.com2',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xffff0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // line1jpu (99:331)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      height: 1*fem,
                      decoration: BoxDecoration (
                        color: Color(0x8cff0000),
                      ),
                    ),
                    Container(
                      // invalidemailaddressN7B (99:341)
                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'Invalid email address',
                        style: SafeGoogleFont (
                          'Nunito',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625*ffem/fem,
                          color: Color(0xffff0000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 56*fem,
            ),
            TextButton(
              // property1variant4QpZ (99:347)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: 80*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame15UJd (99:365)
                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 210*fem, 45*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // mingcutekey2lineMdK (99:366)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/mingcute-key-2-line-KJq.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // passwordcp9 (99:370)
                            'Password',
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
                      // line2kQZ (605:2032)
                      width: double.infinity,
                      height: 1*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffa0a0a0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 56*fem,
            ),
            TextButton(
              // property1variant3rTb (99:355)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupkfp5iEu (TskNapidEducZC9ozbKFp5)
                      padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 1*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame15Asb (99:371)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200*fem, 19*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcutekey2lineVQ5 (99:372)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mingcute-key-2-line.png',
                                    width: 20*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Text(
                                  // passwordBnh (99:376)
                                  'Password',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xffff0000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            // uCu (99:363)
                            '**************',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xffff0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // line1FXf (99:362)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      height: 1*fem,
                      decoration: BoxDecoration (
                        color: Color(0x8cff0000),
                      ),
                    ),
                    Container(
                      // invalidpasswordnGh (99:364)
                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'Invalid Password',
                        style: SafeGoogleFont (
                          'Nunito',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625*ffem/fem,
                          color: Color(0xffff0000),
                        ),
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