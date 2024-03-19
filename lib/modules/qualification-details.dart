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
        // qualificationdetailsFWh (605:593)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0x8cffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/modules/images/rectangle-7-bg-Vr1.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group17vcq (605:2251)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15S5P (605:2253)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timenQ9 (605:2254)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/modules/images/time-iws.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightuUm (605:2255)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionreu (605:2265)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/modules/images/cellular-connection-diy.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiZZK (605:2260)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/wifi-khP.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // battery63T (605:2256)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/battery-wPw.png',
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
              // autogrouplobfRLd (Tsm4t5jqDMYGrAfYByLobF)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 144.29*fem, 40*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // frame29039nR (605:2200)
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
                              // fluentiosarrow24filled2bK (605:2201)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.16*fem, 0.01*fem),
                              width: 8.76*fem,
                              height: 16.68*fem,
                              child: Image.asset(
                                'assets/modules/images/fluent-ios-arrow-24-filled-bah.png',
                                width: 8.76*fem,
                                height: 16.68*fem,
                              ),
                            ),
                            Text(
                              // backjEq (605:2203)
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
                    // raynetfinallogo1fPP (605:596)
                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 0*fem),
                    width: 104.71*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/modules/images/raynet-final-logo-1-n8y.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame2902NYh (605:2204)
              margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 27*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group147HQm (690:69)
                    margin: EdgeInsets.fromLTRB(70*fem, 0*fem, 60*fem, 0*fem),
                    width: double.infinity,
                    height: 66*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // submitrelevantqualifications1r (690:70)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 198*fem,
                              height: 66*fem,
                              child: Text(
                                'Submit Relevant Qualifications',
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
                          ),
                        ),
                        Positioned(
                          // component15Hp5 (690:75)
                          left: 188.5*fem,
                          top: 42*fem,
                          child: Align(
                            child: SizedBox(
                              width: 19.5*fem,
                              height: 19.5*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Image.asset(
                                  'assets/modules/images/component-15.png',
                                  width: 19.5*fem,
                                  height: 19.5*fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame12xvD (638:67)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // coursenameimageKVs (638:69)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                          child: Text(
                            'Course Name & Image',
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
                          // frame2909E73 (638:70)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame42nPT (638:71)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffa0a0a0)),
                                ),
                                child: Text(
                                  'Enter Your Course Name',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Container(
                                // frame41TVb (638:72)
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
                                      // bytesizeuploadP8M (638:73)
                                      margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                      width: 25.32*fem,
                                      height: 23.13*fem,
                                      child: Image.asset(
                                        'assets/modules/images/bytesize-upload-Fhs.png',
                                        width: 25.32*fem,
                                        height: 23.13*fem,
                                      ),
                                    ),
                                    Text(
                                      // dragoruploadimageheregdF (638:75)
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame19ayX (638:146)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // coursenameimageLxh (638:148)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                          child: Text(
                            'Course Name & Image',
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
                          // frame2909481 (638:149)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame42oLV (638:150)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffa0a0a0)),
                                ),
                                child: Text(
                                  'Enter Your Course Name',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Container(
                                // frame41Gzm (638:152)
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
                                      // bytesizeuploadQ5P (638:153)
                                      margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                      width: 25.32*fem,
                                      height: 23.13*fem,
                                      child: Image.asset(
                                        'assets/modules/images/bytesize-upload-4C9.png',
                                        width: 25.32*fem,
                                        height: 23.13*fem,
                                      ),
                                    ),
                                    Text(
                                      // dragoruploadimagehere7kV (638:155)
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame20diq (638:156)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // coursenameimageaty (638:158)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 5*fem),
                          child: Text(
                            'Course Name & Image',
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
                          // frame2909Ja5 (638:159)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame42rrV (638:160)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffa0a0a0)),
                                ),
                                child: Text(
                                  'Enter Your Course Name',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Container(
                                // frame41Xhj (638:162)
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
                                      // bytesizeuploadT5b (638:163)
                                      margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                      width: 25.32*fem,
                                      height: 23.13*fem,
                                      child: Image.asset(
                                        'assets/modules/images/bytesize-upload-74D.png',
                                        width: 25.32*fem,
                                        height: 23.13*fem,
                                      ),
                                    ),
                                    Text(
                                      // dragoruploadimageherexY9 (638:165)
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10*fem,
                  ),
                  Container(
                    // frame10sf7 (605:2230)
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
                            'Submit',
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