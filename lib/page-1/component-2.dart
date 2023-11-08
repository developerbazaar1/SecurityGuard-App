import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 997;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component2uJ1 (180:150)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // property1group26ciD (180:149)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 171*fem, 0*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 393*fem,
                  height: 750*fem,
                  child: Container(
                    // group258Rf (173:125)
                    padding: EdgeInsets.fromLTRB(61*fem, 62*fem, 83*fem, 135*fem),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/rectangle-10-bg-CRw.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle11mzR (180:263)
                          margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 0*fem, 17*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-11.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // rectangle12WBK (180:265)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 76*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-12.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // rectangle14Et1 (180:290)
                          margin: EdgeInsets.fromLTRB(95*fem, 0*fem, 0*fem, 130*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-14.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // autogrouptpvoBHT (TskNy4aa1AAsyRYRUsTpVo)
                          margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 0*fem, 53*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle18KPf (180:595)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 26*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-18.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // rectangle15opd (180:311)
                                margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-15-x7s.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle169db (180:313)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159*fem, 42*fem),
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-16-BiR.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // autogroupgzcvoi9 (TskP54QaSCU2h9bux3gZCV)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle17MzZ (180:314)
                                margin: EdgeInsets.fromLTRB(0*fem, 29*fem, 189*fem, 0*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-17-SMw.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // rectangle13hoX (180:288)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-13-DjX.png',
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
            ),
            TextButton(
              // property1group27cfb (180:148)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 393*fem,
                height: 750*fem,
                child: Container(
                  // group25ZKw (180:138)
                  padding: EdgeInsets.fromLTRB(50*fem, 72*fem, 98*fem, 87*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/page-1/images/rectangle-10-bg.png',
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle12ES5 (180:350)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 163*fem, 11*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-12-cND.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle11MFo (180:351)
                        margin: EdgeInsets.fromLTRB(215*fem, 0*fem, 0*fem, 72*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-11-bay.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle14dUD (180:346)
                        margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 112*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-14-SbB.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle18Zcm (180:596)
                        margin: EdgeInsets.fromLTRB(33*fem, 0*fem, 0*fem, 51*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-18-tDF.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle1578V (180:349)
                        margin: EdgeInsets.fromLTRB(169*fem, 0*fem, 0*fem, 65*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle16eeD (180:347)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 23*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-16.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle13zi5 (180:345)
                        margin: EdgeInsets.fromLTRB(165*fem, 0*fem, 0*fem, 17*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-13-Vfw.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle17wdK (180:348)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215*fem, 0*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-17.png',
                          fit: BoxFit.cover,
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