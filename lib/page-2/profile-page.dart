import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profilepagetY9 (605:1238)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16bxM (605:1315)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15i1P (605:1317)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timecMf (605:1318)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-2/images/time-tky.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // topright8qo (605:1319)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionHih (605:1329)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-2/images/cellular-connection-PN9.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiCKs (605:1324)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/wifi-Dub.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // battery5uT (605:1320)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/battery-s69.png',
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
              // frame64o4m (605:1334)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
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
                    // raynetfinallogo16pZ (605:1335)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-2/images/raynet-final-logo-1-f7X.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // mingcutenotificationlinec2D (605:1336)
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-2/images/mingcute-notification-line-KTw.png',
                      width: 30*fem,
                      height: 30*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame63waH (605:1239)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // component5siq (605:1240)
                    padding: EdgeInsets.fromLTRB(25*fem, 0*fem, 35*fem, 0*fem),
                    width: double.infinity,
                    height: 102*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // ellipse3mZK (605:1241)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                          width: 100*fem,
                          height: 100*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(50*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-2/images/ellipse-3-bg-qAH.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame71rKs (605:1242)
                          width: 208*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame78CuX (605:1243)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // stefanjrichardsXS1 (605:1244)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      child: Text(
                                        'Stefan J. Richards',
                                        style: SafeGoogleFont (
                                          'Noto Sans',
                                          fontSize: 24*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff005271),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // stefanjrgmailcom39T (605:1245)
                                      width: double.infinity,
                                      child: Text(
                                        'stefanj.r@gmail.com',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                // frame32j2H (605:1246)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 123*fem,
                                  height: 32*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff005271)),
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Edit Profile',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff005271),
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
                  Container(
                    // autogroup3faqnWM (TsmH8ypJDvRdsqdgUz3FAq)
                    padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame30uqs (605:1248)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // mybookingsYdw (605:1250)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 183.16*fem, 0*fem),
                                    child: Text(
                                      'My Bookings',
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
                                    // fluentiosarrow24filleddfP (605:1251)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-A6M.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame31JWd (605:1253)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // mychatsKgd (605:1255)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 211.16*fem, 0*fem),
                                    child: Text(
                                      'My Chats',
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
                                    // fluentiosarrow24filledrRf (605:1256)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-DUd.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame338PB (605:1258)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // myearningszAV (605:1260)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.16*fem, 0*fem),
                                    child: Text(
                                      'My Earnings',
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
                                    // fluentiosarrow24filledgZ7 (605:1261)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-Dgu.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame38zph (605:1263)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // appsettingsTyB (605:1265)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 181.16*fem, 0*fem),
                                    child: Text(
                                      'App Settings',
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
                                    // fluentiosarrow24filledNaM (605:1266)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-R8u.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame34GQq (605:1268)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // termscondition8T3 (605:1270)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 137.16*fem, 0*fem),
                                    child: Text(
                                      'Terms & Condition',
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
                                    // fluentiosarrow24filleddPo (605:1271)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-vFb.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame35UfK (605:1273)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // privacypolicyZgm (605:1275)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 176.16*fem, 0*fem),
                                    child: Text(
                                      'Privacy Policy',
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
                                    // fluentiosarrow24filled6Ro (605:1276)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-QD7.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame36arm (605:1278)
                          margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 27.08*fem, 10*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0*fem, 0*fem),
                                    blurRadius: 2.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // helpsupport2im (605:1280)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 160.16*fem, 0*fem),
                                    child: Text(
                                      'Help & Support',
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
                                    // fluentiosarrow24filled8mo (605:1281)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                                    width: 8.76*fem,
                                    height: 16.68*fem,
                                    child: Image.asset(
                                      'assets/page-2/images/fluent-ios-arrow-24-filled-sYD.png',
                                      width: 8.76*fem,
                                      height: 16.68*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        TextButton(
                          // frame37pPj (605:1283)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 9.83*fem, 26.67*fem, 9.83*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // logoutXow (605:1284)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 198.67*fem, 0*fem),
                                  child: Text(
                                    'Logout',
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
                                Container(
                                  // uilsignoutEiM (605:1285)
                                  width: 26.67*fem,
                                  height: 33.33*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/uil-signout-qv9.png',
                                    width: 26.67*fem,
                                    height: 33.33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // navbaryfw (605:1287)
              padding: EdgeInsets.fromLTRB(42.5*fem, 15*fem, 41*fem, 24*fem),
              width: double.infinity,
              height: 99*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(4*fem, 0*fem),
                    blurRadius: 2.5*fem,
                  ),
                ],
              ),
              child: Container(
                // frame17f2y (605:1288)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame23QFT (605:1289)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.17*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // mingcutehome2line9Tw (605:1290)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/mingcute-home-2-line-uyj.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // homeDyb (605:1294)
                            'Home',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3625*ffem/fem,
                              color: Color(0x8c005271),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame27yC5 (605:1295)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.67*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 16.5*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame24FQV (605:1296)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-2/images/frame-24-Lh7.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // chatsNzu (605:1301)
                                'Chats',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0x8c005271),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // frame28iJ5 (605:1302)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33.67*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 8.5*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // mingcutepaperlineQAu (605:1303)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/page-2/images/mingcute-paper-line-oA1.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                              Text(
                                // bookingA3b (605:1307)
                                'Booking',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0x8c005271),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // frame26VrZ (605:1308)
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame22rSD (605:1309)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-2/images/ActiveProfile.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // profilemJH (605:1314)
                            'Profile',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff005271),
                            ),
                          ),
                        ],
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