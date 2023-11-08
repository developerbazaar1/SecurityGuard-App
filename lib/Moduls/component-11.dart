import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 433;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component11roK (605:300)
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
              // property1frame61Kgu (605:301)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 9*fem),
                  width: double.infinity,
                  height: 87*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0xff898989)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame67moo (605:302)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse2KKX (605:303)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 1*fem),
                              width: 60*fem,
                              height: 60*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(30*fem),
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-2/images/ellipse-2-bg-yeH.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame66EhP (605:304)
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // allysonrollinsyQ5 (605:305)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                    child: Text(
                                      'Allyson Rollins',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // mondayoct24tX3 (605:306)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                    child: Text(
                                      'Monday, Oct 24',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // amZt5 (605:307)
                                    '10:45 AM',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 12*ffem,
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
                        // frame667Po (605:308)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 133*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // mminsbeforeEjK (605:309)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                              child: Text(
                                '30m mins before',
                                style: SafeGoogleFont (
                                  'Noto Sans',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff898989),
                                ),
                              ),
                            ),
                            Container(
                              // frame66AN5 (605:310)
                              padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 11*fem, 0*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffdff4ff),
                                borderRadius: BorderRadius.circular(30*fem),
                              ),
                              child: Text(
                                'Payment in process',
                                style: SafeGoogleFont (
                                  'Noto Sans',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff005271),
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
            Container(
              // property1frame62U7s (605:312)
              padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 9*fem),
              width: double.infinity,
              height: 87*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff898989)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame67kr5 (605:313)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse2H5K (605:314)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 1*fem),
                          width: 60*fem,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-2/images/ellipse-2-bg-mAH.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame66Ci5 (605:315)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // allysonrollinsAQ1 (605:316)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                child: Text(
                                  'Allyson Rollins',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mondayoct24cG1 (605:317)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'Monday, Oct 24',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // amLSu (605:318)
                                '10:45 AM',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 12*ffem,
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
                    // frame66eiV (605:319)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 81*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // mminsbeforezGZ (605:320)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                          child: Text(
                            '25m mins before',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff898989),
                            ),
                          ),
                        ),
                        Container(
                          // frame67tcq (605:321)
                          padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 0*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff00ff19),
                            borderRadius: BorderRadius.circular(30*fem),
                          ),
                          child: Text(
                            'Confirmed',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff005271),
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
          );
  }
}