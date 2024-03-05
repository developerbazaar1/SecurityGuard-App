import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class BookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // bookingdetailsGim (605:1520)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 268*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16Bqj (605:1551)
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15V5j (605:1553)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeqfP (605:1554)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-2/images/time-drZ.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightZrH (605:1555)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnection5Zj (605:1565)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-2/images/cellular-connection-gPK.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifizgh (605:1560)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/wifi-8Uy.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batteryKiy (605:1556)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/battery-UAV.png',
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
              // frame7639B (605:1570)
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
                    // raynetfinallogo1vTs (605:1571)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                    width: 52.35*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-2/images/raynet-final-logo-1-ujo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // mingcutenotificationlinepp9 (605:1572)
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-2/images/mingcute-notification-line-d5s.png',
                      width: 30*fem,
                      height: 30*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame75ied (605:1521)
              margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 25*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // frame52FuT (605:1522)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3.12*fem, 0*fem, 110*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // fluentiosarrow24filledMSh (605:1523)
                            margin: EdgeInsets.fromLTRB(0*fem, 3.99*fem, 27.74*fem, 0*fem),
                            width: 13.14*fem,
                            height: 25.01*fem,
                            child: Image.asset(
                              'assets/page-2/images/fluent-ios-arrow-24-filled-3n9.png',
                              width: 13.14*fem,
                              height: 25.01*fem,
                            ),
                          ),
                          Text(
                            // bookingdetailsfiH (605:1526)
                            'Booking Details',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogroupznrmkzd (TsmMTrcGx5TkyLpP5rZNrM)
                    padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 20*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame6562u (605:1528)
                          margin: EdgeInsets.fromLTRB(85*fem, 0*fem, 85*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse1doX (605:1529)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                width: 50*fem,
                                height: 50*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(25*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-2/images/ellipse-1-bg-z57.png',
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // allysonrollinsZBP (605:1532)
                                'Allyson Rollins',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame43EoK (605:1533)
                          width: 202*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // datetimenpq (605:1534)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: double.infinity,
                                child: Text(
                                  'Date & Time:',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Text(
                                // mondayoct241045amhwo (605:1535)
                                'Monday, Oct 24 (10:45 AM)',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame44qHK (605:1536)
                          width: 276*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // addressbGV (605:1537)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: double.infinity,
                                child: Text(
                                  'Address',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Container(
                                // marketplromseyso518nbunitedkin (605:1538)
                                constraints: BoxConstraints (
                                  maxWidth: 276*fem,
                                ),
                                child: Text(
                                  'Market Pl, Romsey SO51 8NB, United Kingdom',
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
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame45yXw (605:1539)
                          width: 103*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // phoneno4JV (605:1540)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: double.infinity,
                                child: Text(
                                  'Phone No.',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              Text(
                                // yRT (605:1541)
                                '90009-90009',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
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
                    // frame4683T (605:1542)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup3m61fZB (TsmNALSps6TXKzDwkJ3M61)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // priceQWm (605:1543)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: double.infinity,
                                child: Text(
                                  'Price:',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff3a3a3a),
                                  ),
                                ),
                              ),
                              RichText(
                                // hourXbP (605:1544)
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3639999628*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '£12.99 ',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '/ Hour',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame739WH (605:1545)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // hoursuEZ (605:1546)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 163*fem, 0*fem),
                                child: Text(
                                  '£12.99 × 5 Hours',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // pcR (605:1547)
                                '£64.95',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
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
                    // frame76yER (605:1548)
                    padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // total5oF (605:1549)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 202*fem, 0*fem),
                          child: Text(
                            'Total:',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff005271),
                            ),
                          ),
                        ),
                        Text(
                          // Ccy (605:1550)
                          '£64.95',
                          style: SafeGoogleFont (
                            'Nunito',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
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
          ],
        ),
      ),
          );
  }
}