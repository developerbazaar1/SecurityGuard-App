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
        // uploaddocumentsy6q (605:544)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0x8cffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/modules/images/rectangle-7-bg-jsX.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group17Fa9 (605:574)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15m2h (605:576)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeueh (605:577)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/modules/images/time-zxh.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightRsw (605:578)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectiony8m (605:588)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/modules/images/cellular-connection-iSu.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiUrD (605:583)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/wifi-7Fw.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // battery15T (605:579)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/battery-GiV.png',
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
              // autogroup6gr5jXF (Tsm3mnFe96bGoSufVv6gr5)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 144.29*fem, 40*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // frame29014ZX (605:570)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 60*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2.08*fem, 0*fem, 0*fem, 0*fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // fluentiosarrow24filled9qs (605:571)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.16*fem, 0.01*fem),
                              width: 8.76*fem,
                              height: 16.68*fem,
                              child: Image.asset(
                                'assets/modules/images/fluent-ios-arrow-24-filled-mmb.png',
                                width: 8.76*fem,
                                height: 16.68*fem,
                              ),
                            ),
                            Text(
                              // backeXj (605:573)
                              'Back',
                              style: SafeGoogleFont (
                                'Nunito',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // raynetfinallogo1Nid (605:547)
                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 0*fem),
                    width: 104.71*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/modules/images/raynet-final-logo-1-xM7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame14gjK (605:548)
              margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 27*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // uploadyourdocumentDUM (605:549)
                    'Upload Your Document',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Noto Sans',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3625*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // frame7L3B (605:550)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // sialicense5mT (605:552)
                          margin: EdgeInsets.fromLTRB(6.82*fem, 0*fem, 0*fem, 10*fem),
                          child: Text(
                            'SIA License',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // frame41CbB (605:2079)
                          padding: EdgeInsets.fromLTRB(93.5*fem, 25.06*fem, 93.5*fem, 21*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff3a3a3a)),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bytesizeuploadWLy (605:2080)
                                margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                width: 25.32*fem,
                                height: 23.13*fem,
                                child: Image.asset(
                                  'assets/modules/images/bytesize-upload-WNM.png',
                                  width: 25.32*fem,
                                  height: 23.13*fem,
                                ),
                              ),
                              Text(
                                // dragoruploadimageherecuo (605:2082)
                                'Drag Or Upload Image Here',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff3a3a3a),
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
                    // frame8wSH (605:554)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                    width: 334*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // passportorrighttoworkTvR (605:556)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 10*fem),
                          child: Text(
                            'Passport Or Right To Work ',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // frame2906BLd (605:2137)
                          width: double.infinity,
                          height: 132*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame2903KSq (605:2138)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(3.5*fem, 0*fem, 3.5*fem, 0*fem),
                                width: 157*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame40DYD (605:2139)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      padding: EdgeInsets.fromLTRB(12.5*fem, 16.06*fem, 12.5*fem, 12*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff3a3a3a)),
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bytesizeupload7tV (605:2140)
                                            margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                            width: 25.32*fem,
                                            height: 23.13*fem,
                                            child: Image.asset(
                                              'assets/modules/images/bytesize-upload-7Ud.png',
                                              width: 25.32*fem,
                                              height: 23.13*fem,
                                            ),
                                          ),
                                          Center(
                                            // dragoruploadimagehere2Em (605:2148)
                                            child: Container(
                                              constraints: BoxConstraints (
                                                maxWidth: 125*fem,
                                              ),
                                              child: Text(
                                                'Drag Or Upload Image Here',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // frontsideimagevb3 (605:2142)
                                      'Front Side Image',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame41fHj (605:2143)
                                padding: EdgeInsets.fromLTRB(3.5*fem, 0*fem, 3.5*fem, 0*fem),
                                width: 157*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame40Bms (605:2144)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      padding: EdgeInsets.fromLTRB(12.5*fem, 16.06*fem, 12.5*fem, 12*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff3a3a3a)),
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bytesizeuploadhER (605:2145)
                                            margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                            width: 25.32*fem,
                                            height: 23.13*fem,
                                            child: Image.asset(
                                              'assets/modules/images/bytesize-upload-dms.png',
                                              width: 25.32*fem,
                                              height: 23.13*fem,
                                            ),
                                          ),
                                          Center(
                                            // dragoruploadimageherec6V (605:2149)
                                            child: Container(
                                              constraints: BoxConstraints (
                                                maxWidth: 125*fem,
                                              ),
                                              child: Text(
                                                'Drag Or Upload Image Here',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // backsideimageiQR (605:2147)
                                      'Back Side Image',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
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
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // frame29023hb (605:558)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame4318d (605:559)
                          margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 14*fem, 10*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // drivinglicensewY5 (605:560)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 169*fem, 0*fem),
                                child: Text(
                                  'Driving License',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // ruw (605:561)
                                '2/2',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff3a3a3a),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame29051nq (605:2125)
                          width: double.infinity,
                          height: 132*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame2903Afj (605:562)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                                width: 159*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame40s4M (605:2065)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      padding: EdgeInsets.fromLTRB(12.5*fem, 16.06*fem, 12.5*fem, 12*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff3a3a3a)),
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bytesizeuploadAp9 (605:2066)
                                            margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                            width: 25.32*fem,
                                            height: 23.13*fem,
                                            child: Image.asset(
                                              'assets/modules/images/bytesize-upload-1T7.png',
                                              width: 25.32*fem,
                                              height: 23.13*fem,
                                            ),
                                          ),
                                          Center(
                                            // dragoruploadimagehere5gD (605:2150)
                                            child: Container(
                                              constraints: BoxConstraints (
                                                maxWidth: 125*fem,
                                              ),
                                              child: Text(
                                                'Drag Or Upload Image Here',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // frontsideimagen4q (605:564)
                                      'Front Side Image',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame41WFj (605:565)
                                padding: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 0*fem),
                                width: 159*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame402Uy (605:2068)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      padding: EdgeInsets.fromLTRB(12.5*fem, 16.06*fem, 12.5*fem, 12*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff3a3a3a)),
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bytesizeupload8Y1 (605:2069)
                                            margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                            width: 25.32*fem,
                                            height: 23.13*fem,
                                            child: Image.asset(
                                              'assets/modules/images/bytesize-upload-YjB.png',
                                              width: 25.32*fem,
                                              height: 23.13*fem,
                                            ),
                                          ),
                                          Center(
                                            // dragoruploadimagehereeFT (605:2151)
                                            child: Container(
                                              constraints: BoxConstraints (
                                                maxWidth: 125*fem,
                                              ),
                                              child: Text(
                                                'Drag Or Upload Image Here',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // backsideimageMQm (605:567)
                                      'Back Side Image',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
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
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // frame2tfb (605:568)
                    margin: EdgeInsets.fromLTRB(94*fem, 0*fem, 94*fem, 0*fem),
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