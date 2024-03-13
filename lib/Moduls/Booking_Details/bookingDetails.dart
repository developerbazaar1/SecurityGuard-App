import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/utils.dart';

import '../notification-list.dart';

class bookingDetails extends StatelessWidget {
  final String name, image;

  const bookingDetails({super.key, required this.name, required this.image});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(
        // bookingdetailsbus (293:1667)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Container(
                // frame75UGq (293:1857)
                margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 25*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame52nYR (293:1900)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (

                      ),
                      child: Center(
                        child: Text(
                          // bookingdetailszeV (293:1904)
                          'Booking Details',
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: CustomPaint(
                          painter: DashedBorderPainter(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // frame65J9P (293:1863)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 50*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse1nqF (293:1864)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 50*fem,
                            height: 50*fem,
                            decoration: BoxDecoration (
                              shape: BoxShape.circle,

                              image: DecorationImage (
                                image: AssetImage (
                                  image,

                                ),
                                fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(

                            height: 22*fem,
                            child: Container(
                              // stefanjrichards81w (293:1867)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                              child: Text(
                                name,
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
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
                      // frame30VQD (293:1874)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame43czd (293:1875)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // datetimexHo (293:1876)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Date & Time:',
                                    textAlign: TextAlign.left,
                                    style: requestTitle,
                                  ),
                                ),
                                Text(
                                  // mondayoct241045amfCD (293:1877)
                                  'Monday, Oct 24 (10:45 AM)',
                                  style: requestSubtitle,
                                ),
                                SizedBox(height: 20*fem,),
                                Container(
                                  // datetimexHo (293:1876)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Address',
                                    textAlign: TextAlign.left,
                                    style: requestTitle,
                                  ),
                                ),
                                Text(
                                  // mondayoct241045amfCD (293:1877)
                                  'Market Pl, Romsey SO51 8NB, United Kingdom',
                                  style: requestSubtitle,
                                ),
                                SizedBox(height: 20*fem,),
                                // Container(
                                //   // datetimexHo (293:1876)
                                //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                //   width: double.infinity,
                                //   child: Text(
                                //     'Phone No.',
                                //     textAlign: TextAlign.left,
                                //     style: requestTitle,
                                //   ),
                                // ),
                                // Text(
                                //   // mondayoct241045amfCD (293:1877)
                                //   '90009-90009',
                                //   style: requestSubtitle,
                                // ),
                              ],
                            ),
                          ),
                          Container(
                            // frame45zkH (293:1878)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupkcxhkzM (TskafPky4JWL1fuVp8kCxh)
                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // priceWCq (293:1879)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        width: double.infinity,
                                        child: Text(
                                          'Price:',
                                          textAlign: TextAlign.left,
                                          style: requestTitle,
                                        ),
                                      ),
                                      RichText(
                                        // hourEed (293:1880)
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
                                  // frame73k97 (293:1881)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // hours3tu (293:1882)
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
                                        // Yqf (293:1883)
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        width: MediaQuery.of(context).size.width,
                        child: CustomPaint(
                          painter: DashedBorderPainter(),
                        ),
                      ),
                    ),
                    Container(
                      // frame74HYM (293:1884)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (

                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // totalReZ (293:1885)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
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
                            // Mo7 (293:1886)
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        width: MediaQuery.of(context).size.width,
                        child: CustomPaint(
                          painter: DashedBorderPainter(),
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
          );
  }
  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kAppbarUnderline, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),
                ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Image(
        image: AssetImage('assets/page-2/images/finalImage/logo.png'),
        height: 40,
        width: 52.35,
      ),
      actions: [
        Image(
          image: AssetImage('assets/page-2/images/finalImage/notification.png'),
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}