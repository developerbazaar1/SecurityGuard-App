import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // uploadyourpictureDX7 (605:508)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 114.5*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0x8cffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-2/images/rectangle-7-bg-XyB.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // group17nTj (605:525)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15HfP (605:527)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timedUM (605:528)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-2/images/time-yvZ.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightMQM (605:529)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionuRs (605:539)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-2/images/cellular-connection-Bhs.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiDhT (605:534)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/wifi-mW1.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryLXB (605:530)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/battery-JUh.png',
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
              // autogroupkwlmfJZ (Tsm33U8oyz4VPihvXWKwLm)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 144.29*fem, 23.5*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // frame2901zLq (605:521)
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
                              // fluentiosarrow24filledHKw (605:522)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.16*fem, 0.01*fem),
                              width: 8.76*fem,
                              height: 16.68*fem,
                              child: Image.asset(
                                'assets/page-2/images/fluent-ios-arrow-24-filled-2sj.png',
                                width: 8.76*fem,
                                height: 16.68*fem,
                              ),
                            ),
                            Text(
                              // backb5j (605:524)
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
                    // raynetfinallogo1KnR (605:511)
                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 0*fem),
                    width: 104.71*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/page-2/images/raynet-final-logo-1-T8V.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame142Rw (605:512)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 17*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame29079mT (605:2270)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // uploadpictureinuniformhHB (605:513)
                          margin: EdgeInsets.fromLTRB(29*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'UPLOAD PICTURE IN UNIFORM',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          // frame40NeD (605:514)
                          padding: EdgeInsets.fromLTRB(59.5*fem, 50.06*fem, 59.5*fem, 46*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff3a3a3a)),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bytesizeuploadtcZ (605:515)
                                margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                width: 25.32*fem,
                                height: 23.13*fem,
                                child: Image.asset(
                                  'assets/page-2/images/bytesize-upload.png',
                                  width: 25.32*fem,
                                  height: 23.13*fem,
                                ),
                              ),
                              Text(
                                // dragoruploadyourthumbnailimage (605:517)
                                'Drag Or Upload Your Thumbnail Image Here',
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
                        SizedBox(
                          height: 10*fem,
                        ),
                        Text(
                          // pngorjpgnobiggerthan800pxwidea (605:518)
                          'PNG or JPG no bigger than 800px wide and tall.',
                          style: SafeGoogleFont (
                            'Noto Sans',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625*ffem/fem,
                            color: Color(0xff3a3a3a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19*fem,
                  ),
                  Container(
                    // frame2908cBB (605:2271)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // uploadpicturewithdogorvan9wo (605:2272)
                          constraints: BoxConstraints (
                            maxWidth: 247*fem,
                          ),
                          child: Text(
                            'UPLOAD PICTURE WITH \nDOG OR VAN',
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
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          // frame40r5X (605:2273)
                          padding: EdgeInsets.fromLTRB(59.5*fem, 50.06*fem, 59.5*fem, 46*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xff3a3a3a)),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bytesizeuploadZEq (605:2274)
                                margin: EdgeInsets.fromLTRB(0.23*fem, 0*fem, 0*fem, 12.81*fem),
                                width: 25.32*fem,
                                height: 23.13*fem,
                                child: Image.asset(
                                  'assets/page-2/images/bytesize-upload-bEZ.png',
                                  width: 25.32*fem,
                                  height: 23.13*fem,
                                ),
                              ),
                              Text(
                                // dragoruploadyourthumbnailimage (605:2276)
                                'Drag Or Upload Your Thumbnail Image Here',
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
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          // pngorjpgnobiggerthan800pxwidea (605:2277)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93*fem, 0*fem),
                          child: Text(
                            'PNG or JPG no bigger than 800px wide and tall.',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff3a3a3a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19*fem,
                  ),
                  Container(
                    // frame2fSH (605:519)
                    margin: EdgeInsets.fromLTRB(104*fem, 0*fem, 104*fem, 0*fem),
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